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
