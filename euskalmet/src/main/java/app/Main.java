package app;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.json.simple.JSONObject;

import controller.Controller;
import controller.conexion.Cliente;
import controller.conexion.Server;
import controller.json.JsonParse;
import controller.json.Pasarela;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.Datos;
import modelo.dbClasses.DatosId;

public class Main {
	public static Server servidor;
	public static void main(String[] args) {
		DBController bbddController = new DBController();
		Modelo modelo = new Modelo(bbddController);
		
				
		System.out.println("AAAAAAAAAAAAAAAAAAAAA");
		
		//Server servidor = new Server();
		Pasarela pasarela = new Pasarela(modelo, servidor);
		
		Controller controlador = new Controller(modelo, pasarela);
		
		// Consulta login
		

		
		//parser.readURL("https://opendata.euskadi.eus/contenidos/ds_informes_estudios/calidad_aire_2021/es_def/adjuntos/datos_horarios/3_DE_MARZO.json", true);
		System.out.println("finish");
		
		
		// vista
		// controller
		
		
		// Aplicacion
		bbddController.closeSessionFactory();
	}
}
