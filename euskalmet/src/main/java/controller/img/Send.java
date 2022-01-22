package controller.img;
import java.awt.image.*;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;

import javax.imageio.ImageIO;

public class Send {
	public static void main(String[] args) throws Exception {
        //Socket socket = new Socket("localhost", 13085);
        Socket socket = new Socket("localhost", 4444);

        OutputStream outputStream = socket.getOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(outputStream);

        BufferedImage image = ImageIO.read(new File("C:/Users/cuest/OneDrive/Desktop/descarga.jpg"));

        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ImageIO.write(image, "jpg", byteArrayOutputStream);

        byte[] size = ByteBuffer.allocate(4).putInt(byteArrayOutputStream.size()).array();
        String json = "{\"operation\":\"sendFotoEstacion\", \"estacionId\":5}";
        oos.writeObject(json);
        outputStream.write(size);
        outputStream.write(byteArrayOutputStream.toByteArray());
        outputStream.flush();
        System.out.println("Flushed: " + System.currentTimeMillis());

        socket.close();
    }
}
