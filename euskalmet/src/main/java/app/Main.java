package app;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import controlador.bbdd.BBDDController;
import modelo.Modelo;

public class Main {
	public static void main(String[] args) {
		BBDDController bbddController = new BBDDController();
		
		Modelo modelo = new Modelo(bbddController);
		
		LocalDate dia = LocalDate.of(2021, 12, 22);
		LocalTime hora = LocalTime.of(17, 45, 19);
		//int cont = modelo.getBbddController().getDatos(8, dia, hora).size();
		int cont = modelo.getBbddController().getMunicipios().size();
		System.out.println(cont);
		// vista
		// controller
		
		
		// Aplicacion
		bbddController.closeSessionFactory();
	}
}
