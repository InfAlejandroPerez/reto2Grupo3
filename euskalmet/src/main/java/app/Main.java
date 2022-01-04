package app;

import java.net.URL;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import controller.json.JsonParse;
import database.DBController;
import model.Modelo;
import model.Municipios;
import model.Provincia;

public class Main {
	public static void main(String[] args) {
		DBController bbddController = new DBController();
		
		Modelo modelo = new Modelo(bbddController);
		
		// PRUEBAS
		//LocalDate dia = LocalDate.of(2021, 12, 22);
		//LocalTime hora = LocalTime.of(17, 45, 19);
		//int cont = modelo.getBbddController().getDatos(8, dia, hora).size();
		//int cont = modelo.getDBController().getMunicipios().size();
		//System.out.println(cont);
		JsonParse parser = new JsonParse();
		parser.readURL("https://opendata.euskadi.eus/contenidos/ds_informes_estudios/calidad_aire_2021/es_def/adjuntos/datos_horarios/3_DE_MARZO.json", true);
		System.out.println("finish");
		
		
		// vista
		// controller
		
		
		// Aplicacion
		bbddController.closeSessionFactory();
	}
}
