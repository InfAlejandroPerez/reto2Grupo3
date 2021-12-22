package app;

import java.sql.Date;
import java.sql.Time;

import controlador.bbdd.BBDDController;
import modelo.Modelo;

public class Main {
	public static void main(String[] args) {
		BBDDController bbddController = new BBDDController();
		
		Modelo modelo = new Modelo(bbddController);
		
		Date dia = new Date();
		System.out.println(dia.toLocaleString());
		modelo.getBbddController().getDatos(8, dia, new Time(1640200099));
		// vista
		// controller
		
		
		// Aplicacion
		bbddController.closeSessionFactory();
	}
}
