package app;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.json.simple.JSONObject;

import controller.Controller;
import controller.conexion.Cliente;
import controller.conexion.Pasarela;
import controller.conexion.Server;
import controller.json.JsonParse;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.Datos;
import modelo.dbClasses.DatosId;

public class Main {
	public static Server servidor;
	public static void main(String[] args) {
		DBController dbController = new DBController();
		
		Pasarela pasarela = new Pasarela(dbController);
		Server server = new Server(pasarela);
		server.iniciar();
		
		dbController.closeSessionFactory();
	}
}
