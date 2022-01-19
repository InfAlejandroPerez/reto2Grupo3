package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import app.Main;
import controller.json.Pasarela;
import database.DBController;
import modelo.dbClasses.Usuarios;

public class Server {

// declaring required variables
	private ServerSocket serverSocket;
	private Socket clientSocket;
	private ObjectInputStream entrada = null;
	private ObjectOutputStream salida = null;
	//public static Server servidor;
	
	public Server() {
		//servidor = this;
	}
	
	public void sendJson(String result) {
		try {
			salida.writeObject(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String a = "";
	}

	public void iniciar() {
		try {
			// creating a new ServerSocket at port 4444
			serverSocket = new ServerSocket(4444);

		} catch (IOException e) {
			System.out.println("Could not listen on port: 4444");
		}

		System.out.println("Server started. Listening to the port 4444");

		while (true) {
			try {

				clientSocket = serverSocket.accept();
				System.out.println("Te has conectado");

				entrada = new ObjectInputStream(clientSocket.getInputStream());
				salida = new ObjectOutputStream(clientSocket.getOutputStream());

				String linea = (String) entrada.readObject();
				System.out.println("Recibido: " + linea);
				
				query(linea);
				//this.sendJson("Saludos desde el servidor. Soy Carmen");

			} catch (IOException ex) {
				System.out.println("Problem in message reading");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			Main.servidor = this;
			System.out.println("d");
		}
	}

	private void sendSuccess(String operationName) {
		String jsonSuccess = "{\"operation\":\""+operationName+"\","
				+ "\"result\":true}";
		sendJson(jsonSuccess);
	}

	private void sendFail(String operationName) {
		String jsonFail = "{\"operation\":\""+operationName+"\","
				+ "\"result\":false}";
		sendJson(jsonFail);
	}
	
	
	private void validateLogin(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			String tried_pass = (String) jsonObject.get("tried_pass");
			
			Usuarios usuario = (new DBController()).getUsuario(user);
			if(usuario == null) {
				sendFail("login");
				return;
			}
			if(usuario.getPassword().equals(tried_pass))
				sendSuccess("login");
			else
				sendFail("login");
			
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
		Server s = new Server();
		s.iniciar();
	}
}