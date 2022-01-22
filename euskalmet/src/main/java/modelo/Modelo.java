package modelo;

import database.DBController;

public class Modelo {
	
	public static final String PATH_IMG = "src/main/resources/img/";

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
