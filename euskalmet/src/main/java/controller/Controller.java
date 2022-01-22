package controller;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;


import controller.conexion.Pasarela;
import modelo.Modelo;

public class Controller {
	private Modelo modelo;
	private Pasarela pasarela;
	
	public Controller(Modelo modelo, Pasarela pasarela) {
		super();
		this.modelo = modelo;
		this.pasarela = pasarela;
	}

	public void imgToFile2(ImageIcon icon) {
		BufferedImage image;
		try {
			image = ImageIO.read(new File("C:/Users/cuest/OneDrive/Desktop/descarga.png"));
			ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
	        ImageIO.write(image, "jpg", byteArrayOutputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        
	}
	
	public void imgToFile(ImageIcon icon) {
		Image img = icon.getImage();

		BufferedImage bi = new BufferedImage(img.getWidth(null),img.getHeight(null),BufferedImage.TYPE_BYTE_BINARY);

		Graphics2D g2 = bi.createGraphics();
		g2.drawImage(img, 0, 0, null);
		g2.dispose();
		try {
			ImageIO.write(bi, "png", new File("img.png"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Modelo getModelo() {
		return modelo;
	}

	public void setModelo(Modelo modelo) {
		this.modelo = modelo;
	}

	public Pasarela getPasarela() {
		return pasarela;
	}

	public void setPasarela(Pasarela pasarela) {
		this.pasarela = pasarela;
	}

}
