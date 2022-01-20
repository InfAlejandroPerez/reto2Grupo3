package controller.conexion;

import java.util.List;

import org.hibernate.Session;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import database.DBController;
import modelo.dbClasses.EspaciosNaturales;
import modelo.dbClasses.Municipios;
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
			
			System.out.println(user);
			
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
	
	public void getMunicipios(String query) {
		JSONObject provinciaJSON;
		try {
			provinciaJSON = (JSONObject) parser.parse(query);
			String nombreProvincia = (String) provinciaJSON.get("provincia");
			List<Municipios> muns = dbController.getMunicipios(nombreProvincia);
	        
			String pueblosJSON = "[\n";
			int cont = 0;
			for(Municipios mun : muns) { 
				if(cont > 0)
					pueblosJSON += ",\n";
				pueblosJSON+="  "+mun.toJSON();	
				cont ++;
			}
			pueblosJSON += "\n]\n";
			
			String ret = "{\"operation\":\"getMunicipiosProv\",\n"
					+ "\"result\":" + pueblosJSON + "}";
			
			System.out.println(ret);
			
			Server.sendResponse(ret);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}
	
	protected void getEspaciosProv(String query) {
		System.out.println("estoy en espacios");
		JSONObject provinciaJSON;
		try {
			provinciaJSON = (JSONObject) parser.parse(query);
			String nombreProvincia = (String) provinciaJSON.get("provincia");
			List<EspaciosNaturales> muns = dbController.getEspacios(nombreProvincia);
	        
			String espaciosJSON = "[\n";
			int cont = 0;
			for(EspaciosNaturales esp : muns) { 
				if(cont > 0)
					espaciosJSON += ",\n";
				espaciosJSON+="  "+esp.toJSON();	
				System.out.println(espaciosJSON);
				cont ++;
			}
			espaciosJSON += "\n]\n";
			
			String ret = "{\"operation\":\"getEstacionesProv\",\n"
					+ "\"result\":" + espaciosJSON + "}";
			
			System.out.println(ret);
			
			Server.sendResponse(ret);
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
