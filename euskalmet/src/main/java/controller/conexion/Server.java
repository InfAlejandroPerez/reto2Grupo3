package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.ServerSocket;
import java.net.Socket;

import org.hibernate.Session;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import app.Main;
import controller.json.Pasarela;
import database.DBController;
import database.HibernateUtil;
import modelo.dbClasses.Usuarios;

public class Server {

// declaring required variables
	private ServerSocket serverSocket;
	private Socket clientSocket;
	private ObjectInputStream entrada = null;
	private ObjectOutputStream salida = null;
	//private DBController dbco = new DBController();
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

	private void sendSuccess() {
		String jsonSuccess = "{\"result\":true}";
		sendJson(jsonSuccess);
	}

	private void sendFail() {
		String jsonFail = "{\"result\":false}";
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
				sendFail();
				return;
			}
			
			if(usuario.getPassword().equals(tried_pass))
				sendSuccess(); 
			else
				sendFail();
			
			System.out.println(user);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}
	
	private void comprobarUser(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			
			Usuarios usuario = (new DBController()).getUsuario(user);
			
			if(usuario == null) {
				sendFail();
				return;
			}
			
			if(usuario.getNombre().equals(user))
				sendSuccess();
			else
				sendFail();
			
			System.out.println(user);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}   
	}

	
	private void insertUser(String jsonString) {
		JSONParser parser = new JSONParser();  
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(jsonString);
			
			String user = (String) jsonObject.get("username");
			String pass = (String) jsonObject.get("pass");
		
			
			// don't need if you already got a session
			Session session = HibernateUtil.getSessionFactory().openSession();

			// start transaction
			session.beginTransaction();

			int codUser = (new DBController()).getLastUserId(session);
			// create user
			Usuarios usuario = new Usuarios();
			usuario.setCodUsuario(codUser+1);
			usuario.setNombre(user);
			usuario.setPassword(pass);

			// Save the invitation to database
			session.save(usuario);

			// Commit the transaction
			session.getTransaction().commit();
			session.close();
			
	        sendSuccess();
			System.out.println(user + " insert");
			
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
					break;
				case "comprobarUsuario":
					comprobarUser(jsonString);
					break;
				case "insertUser":
					insertUser(jsonString);
					break;
					
					
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