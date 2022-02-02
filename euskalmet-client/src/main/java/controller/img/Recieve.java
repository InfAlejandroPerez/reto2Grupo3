package controller.img;
import java.awt.image.*;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import controller.conexion.Query;

public class Recieve {
	    public static void main(String[] args) throws Exception {

	        String query = "{\"operation\":\"getFotoEstacion\", \"codEstacion\":5}";
	        
	        ImageIcon icon = (new Query()).getFotoEspacio(query);
	        System.out.println(icon.toString());

	    }

}
