package controller;

import controller.json.Pasarela;
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
