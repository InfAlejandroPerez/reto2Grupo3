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
	
	public static void sendResponse(String result) {
		try {
			System.out.println(result);
			salida.writeObject(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void sendResponse(Boolean result) {
		try {
			salida.writeObject(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
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
				case "getProvincias":
					pasarela.getProvincias();
					break;
				case "getMunicipios":
					pasarela.getMunicipios();
					break;
				case "getMunicipiosProv":
					pasarela.getMunicipios(jsonString);
					break;
				case "getEspaciosProv":
					pasarela.getEspaciosProv(jsonString);
				default:
					sendResponse("Error - Operación no definida en el servidor.");
					
			}
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}

}