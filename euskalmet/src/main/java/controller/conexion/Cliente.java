package controller.conexion;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;

public class Cliente {

	private Socket client;
	private PrintWriter printwriter;
	
	public void iniciar() {
		
		  try {
              // the IP and port should be correct to have a connection established
              // Creates a stream socket and connects it to the specified port number on the named host.
              client = new Socket("192.168.56.1", 4444);  // connect to server
              printwriter = new PrintWriter(client.getOutputStream(),true);
              printwriter.write("Hola cliente");  // write the message to output stream

              printwriter.flush();
              printwriter.close();

              // closing the connection
              client.close();

          } catch (IOException e) {
              e.printStackTrace();
          }
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cliente c = new Cliente();
		c.iniciar();
	}

}
