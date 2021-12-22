package modelo;

import controlador.bbdd.BBDDController;

public class Modelo {

	private BBDDController bbddController;

	public Modelo(BBDDController bbddController) {
		super();
		this.setBbddController(bbddController);
	}

	public BBDDController getBbddController() {
		return bbddController;
	}

	public void setBbddController(BBDDController bbddController) {
		this.bbddController = bbddController;
	}
	
	
}
