package controller.img;
import java.awt.image.*;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;

import javax.imageio.ImageIO;

public class Send {
	
	public static void setEspacioImage(String imagePath, int codEstacion) {
		Socket socket;
		try {
			socket = new Socket("localhost", 4444);
			OutputStream outputStream = socket.getOutputStream();
	        ObjectOutputStream oos = new ObjectOutputStream(outputStream);

	        BufferedImage image = ImageIO.read(new File(imagePath));

	        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
	        ImageIO.write(image, "jpg", byteArrayOutputStream);

	        byte[] size = ByteBuffer.allocate(4).putInt(byteArrayOutputStream.size()).array();
	        String json = "{\"operation\":\"sendFotoEstacion\", \"codEstacion\":"+codEstacion+"}";
	        oos.writeObject(json);
	        outputStream.write(size);
	        outputStream.write(byteArrayOutputStream.toByteArray());
	        System.out.println("Flushed: " + System.currentTimeMillis());

	        socket.close();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

        
	}
	
	public static void main(String[] args) throws Exception {
       setEspacioImage("C:/Users/cuest/OneDrive/Desktop/descarga.jpg", 3);
    }
}
