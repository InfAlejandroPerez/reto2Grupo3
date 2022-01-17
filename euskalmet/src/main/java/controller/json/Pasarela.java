package controller.json;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import controller.conexion.Server;
import modelo.Modelo;
import modelo.dbClasses.Usuarios;

public class Pasarela {
	private Modelo modelo;
	private Server servidor;
	
	public Pasarela(Modelo modelo, Server servidor) {
		super();
		this.modelo = modelo;
		this.servidor = servidor;
	}

	private void sendSuccess() {
		String jsonSuccess = "{\"ressult\":\"true\"}";
		this.servidor.sendJson(jsonSuccess);
	}

	private void validateLogin(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			String tried_pass = (String) jsonObject.get("tried_pass");
			
			Usuarios usuario = modelo.getDBController().getUsuario(user);
			if(usuario.getPassword().equals(tried_pass))
				sendSuccess();
			
			System.out.println(user);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	public void query(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			String operation = (String) jsonObject.get("operation");
			
			switch (operation) {
				case "login":
					validateLogin(jsonString);
			}
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	public static void main(String[] args) {		
		
	}

	public Modelo getModelo() {
		return modelo;
	}

	public void setModelo(Modelo modelo) {
		this.modelo = modelo;
	}

	public Server getServidor() {
		return servidor;
	}

	public void setServidor(Server servidor) {
		this.servidor = servidor;
	}
	
	

	
	

}
