package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.List;

import org.hibernate.Session;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import app.Main;
import database.DBController;
import modelo.dbClasses.EspaciosNaturales;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.Usuarios;

public class Server {

// declaring required variables
	private ServerSocket serverSocket;
	private Socket clientSocket;
	private static ObjectInputStream entrada = null;
	private static ObjectOutputStream salida = null;
	private DBController dbController = new DBController();
	private Pasarela pasarela;
	
	public Server(Pasarela pasarela) {
		this.pasarela = pasarela;
	}
	
	public static void sendJson(String result) {
		try {
			salida.writeObject(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String a = "";
	}

	public void iniciar() {
		try {
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

			} catch (IOException ex) {
				System.out.println("Problem in message reading");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			Main.servidor = this;
		}
	}

	
	protected static void sendSuccess(String operationName) {
		String jsonSuccess = "{\"operation\":\""+operationName+"\","
				+ "\"result\":true}";
		Server.sendJson(jsonSuccess);
	}

	protected static void sendFail(String operationName, String message) {
		String jsonFail = "{\"operation\":\""+operationName+"\","
				+ "\"result\":false,"
				+ "\"errorMessage\":\""+message+"\"}";
		Server.sendJson(jsonFail);
	}
	
	public void query(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			String operation = (String) jsonObject.get("operation");
			
			switch (operation) {
				case "login":
					pasarela.validateLogin(jsonString);
					break;
				case "comprobarUsuario":
					pasarela.comprobarUser(jsonString);
					break;
				case "insertUser":
					pasarela.insertUser(jsonString);
					break;
				case "getMunicipiosProv":
					pasarela.getMunicipios(jsonString);
					break;
				case "getEspaciosProv":
					pasarela.getEspaciosProv(jsonString);
				default:
					sendFail("operationNotDefined", "Error - Operaci�n no definida en la pasarela.");
					
			}
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	public static void main(String[] args) {
		DBController dbController = new DBController();
		Pasarela pasarela = new Pasarela(dbController);
		Server server = new Server(pasarela);
		server.iniciar();
	}
}