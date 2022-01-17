package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

public class Cliente {

	private Socket cliente = null;
	private ObjectInputStream entrada = null;
	private ObjectOutputStream salida = null;
	
	public void iniciar() {
	
		  try {

              cliente = new Socket("192.168.56.1", 4444);  // connect to server
              System.out.println("Conexión realizada con servidor");
              
              salida = new ObjectOutputStream(cliente.getOutputStream());
  			  entrada = new ObjectInputStream(cliente.getInputStream());

  			  salida.writeObject("Hola soy el Cliente");
  			  String linea = (String) entrada.readObject();
			  System.out.println("Recibido: " + linea);

	  		  // closing the connection
              cliente.close();

          } catch (IOException e) {
              e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cliente c = new Cliente();
		c.iniciar();
	}

}
