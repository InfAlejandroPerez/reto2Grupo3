package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
  
public class Server {
  
// declaring required variables
private static ServerSocket serverSocket;
private static Socket clientSocket;
private static ObjectInputStream entrada = null;
private static ObjectOutputStream salida = null;

public static void main(String[] args) {
  
    try {
        // creating a new ServerSocket at port 4444
        serverSocket = new ServerSocket(4444); 
  
    } catch (IOException e) {
        System.out.println("Could not listen on port: 4444");
    }
  
    System.out.println("Server started. Listening to the port 4444");
  
    while(true){
        try {
  
            clientSocket = serverSocket.accept(); 
            System.out.println("Te has conectado");

          
            entrada = new ObjectInputStream(clientSocket.getInputStream());
			salida = new ObjectOutputStream(clientSocket.getOutputStream());

			String linea = (String) entrada.readObject();
			System.out.println("Recibido: " + linea);
			salida.writeObject("Saludos desde el servidor. Soy Carmen.");
              
            
     
        } catch (IOException ex) {
            System.out.println("Problem in message reading");
        } catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
  }
}