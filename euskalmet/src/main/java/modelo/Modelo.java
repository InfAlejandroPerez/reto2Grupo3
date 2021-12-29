package modelo;

import controlador.bbdd.DBController;

public class Modelo {

	private DBController dbController;

	public Modelo(DBController dbController) {
		super();
		this.dbController = dbController;
	}

	public DBController getDBController() {
		return dbController;
	}

	public void setDBController(DBController bbddController) {
		this.dbController = bbddController;
	}
	
	
}
