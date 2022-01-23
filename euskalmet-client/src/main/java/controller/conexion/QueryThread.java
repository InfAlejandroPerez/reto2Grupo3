package controller.conexion;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

import javax.swing.ImageIcon;

public class QueryThread extends Thread {
    private final String message;
    public ObjectInputStream entrada;
    public ObjectOutputStream salida;
    public Socket cliente;
    public String responseStr;
    public Boolean responseBool;
    public ImageIcon responseImageIcon;
    public Object respuesta;

    public QueryThread(String message) {
        this.message = message;
    }

    @Override
    public void run() {
        try {
            cliente = new Socket("192.168.1.134", 4444);  // connect to server

            salida = new ObjectOutputStream(cliente.getOutputStream());
            entrada = new ObjectInputStream(cliente.getInputStream());

            salida.writeObject(message);
            Object respuesta = entrada.readObject();
            this.respuesta = respuesta;

            if(respuesta instanceof String) {
                responseStr = (String) respuesta;
                responseBool = true;
                this.responseImageIcon = null;
            }
            else if (respuesta instanceof Boolean){
                this.responseBool = (Boolean)  respuesta;
                this.responseStr = "true";
                this.responseImageIcon = null;
            }
            else if (respuesta instanceof ImageIcon) {
            	this.responseBool = true;
                this.responseStr = "true";
                this.responseImageIcon = (ImageIcon) respuesta;
            }

            cliente.close();

        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
