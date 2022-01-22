package controller.conexion;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import org.hibernate.Session;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import database.DBController;
import modelo.Modelo;
import modelo.jsonSerializable;
import modelo.dbClasses.EspaciosNaturales;
import modelo.dbClasses.Estaciones;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.Provincia;
import modelo.dbClasses.Usuarios;

public class Pasarela {
	private DBController dbController;
	public Server servidor;
	private JSONParser parser = new JSONParser();
	
	public Pasarela(DBController dbController) {
		super();
		this.dbController = dbController;
	}

	protected void validateLogin(String jsonString) {
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			String tried_pass = (String) jsonObject.get("tried_pass");
			
			Usuarios usuario = (new DBController()).getUsuario(user);
			
			if(usuario == null) {
				Server.sendResponse(false);
				return;
			}
			if(usuario.getPassword().equals(tried_pass))
				Server.sendResponse(true);
			else
				Server.sendResponse(false);
						
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	protected void comprobarUser(String jsonString) {
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			String user = (String) jsonObject.get("username");
			
			Usuarios usuario = dbController.getUsuario(user);
			Server.sendResponse(null != usuario);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}
	
	protected void insertUser(String jsonString) {
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			String pass = (String) jsonObject.get("pass");
		
			dbController.insertUser(user, pass);

	        Server.sendResponse(true);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	public void getProvincias() {
		
		List<Provincia> provs = dbController.getProvincias();
        
		String provincias = listToJSON(provs);
		
		String ret = "{\"operation\":\"getProvincias\",\n"
				+ "\"result\":" + provincias + "}";
				
		Server.sendResponse(ret);
	
	
}
	
	public void getMunicipios() {
			List<Municipios> muns = dbController.getMunicipios();
	        
			String pueblosJSON = listToJSON(muns);
			String ret = "{\"operation\":\"getMunicipios\",\n"
					+ "\"result\":" + pueblosJSON + "}";
			
			Server.sendResponse(ret);
	}
	
	public void getMunicipios(String query) {
		JSONObject provinciaJSON;
		try {
			provinciaJSON = (JSONObject) parser.parse(query);
			String nombreProvincia = (String) provinciaJSON.get("provincia");
			List<Municipios> muns = dbController.getMunicipios(nombreProvincia);
	        
			String pueblosJSON = listToJSON(muns);
			
			String ret = "{\"operation\":\"getMunicipiosProv\",\n"
					+ "\"result\":" + pueblosJSON + "}";
						
			Server.sendResponse(ret);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}
	
	private String listToJSON(List<? extends jsonSerializable> lista) {
		String ret = "[";
		int cont = 0;
		for(jsonSerializable obj : lista) { 
			if(cont > 0)
				ret += ",";
			ret+="  "+obj.toJSON();	
			cont ++;
		}
		ret += "]";
		return ret;
	}
	
	public void getEspacios() {
		List<EspaciosNaturales> espacios = dbController.getEspacios();
        
		String espaciosJSON = listToJSON(espacios);
		String ret = "{\"operation\":\"getEspacios\",\n"
				+ "\"result\":" + espaciosJSON + "}";
		
		Server.sendResponse(ret);
	}
	
	protected void getEspaciosMun(String query) {
		JSONObject espacioJSON;
		try {
			espacioJSON = (JSONObject) parser.parse(query);
			String nombreMunicipio = (String) espacioJSON.get("municipio");
			List<EspaciosNaturales> espacios = dbController.getEspacios(nombreMunicipio);
			
			String espaciosJSON = listToJSON(espacios);
			
			String ret = "{\"operation\":\"getEstacionesMun\",\n"
					+ "\"result\":" + espaciosJSON + "}";
						
			Server.sendResponse(ret);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	protected void getEspaciosProv(String query) {
		JSONObject espacioJSON;
		try {
			espacioJSON = (JSONObject) parser.parse(query);
			String nombreProvincia = (String) espacioJSON.get("provincia");
			List<EspaciosNaturales> espacios = dbController.getEspaciosProv(nombreProvincia);
			
			String espaciosJSON = listToJSON(espacios);
			
			String ret = "{\"operation\":\"getEspaciosProv\",\n"
					+ "\"result\":" + espaciosJSON + "}";
						
			Server.sendResponse(ret);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	public void getEstacionesMun(String query) {
		JSONObject provinciaJSON;
		try {
			provinciaJSON = (JSONObject) parser.parse(query);
			String nombreMunicipio = (String) provinciaJSON.get("municipio");
			List<Estaciones> estaciones = dbController.getEstacionesMun(nombreMunicipio);
			
			String espaciosJSON = listToJSON(estaciones);
			
			String ret = "{\"operation\":\"getEstacionesMun\",\n"
					+ "\"result\":" + espaciosJSON + "}";
						
			Server.sendResponse(ret);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	
	public void readFotoEstacion(InputStream inputStream, String query) {
		try {
			JSONObject obj = (JSONObject) parser.parse(query);
			long codEstacion = (long) obj.get("codEstacion");
			
			System.out.println("dentro de readFotoEstacion");
			String nameFoto = "EstacionNatural" + codEstacion + ".jpg";
			dbController.setFotoEspacio(codEstacion, nameFoto);
			
			System.out.println("read estacion:  " + codEstacion);
        byte[] sizeAr = new byte[4];
	        inputStream.read(sizeAr);
	        int size = ByteBuffer.wrap(sizeAr).asIntBuffer().get();

	        byte[] imageAr = new byte[size];
	        inputStream.read(imageAr);

	        BufferedImage image = ImageIO.read(new ByteArrayInputStream(imageAr));

	        System.out.println("Received " + image.getHeight() + "x" + image.getWidth() + ": " + System.currentTimeMillis());
	        ImageIO.write(image, "jpg", new File("src/main/resources/img/" + nameFoto));
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public void getFotoEstacion(String query) {
		try {
			JSONObject obj = (JSONObject) parser.parse(query);
			long codEstacion = (long) obj.get("codEstacion");
			String img = dbController.getFotoEspacio(codEstacion);
						
			ImageIcon icon = new ImageIcon(Modelo.PATH_IMG + img);
			
			Server.sendResponse(icon);
		} catch (ParseException e) {
			e.printStackTrace();
		}

        
	}

	
	// Getters and Setters
	protected DBController getDbController() {
		return dbController;
	}

	protected void setDbController(DBController dbController) {
		this.dbController = dbController;
	}



	
	

	
	

}
