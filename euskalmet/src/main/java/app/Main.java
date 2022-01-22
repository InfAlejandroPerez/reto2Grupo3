package app;

import java.util.List;

import javax.swing.ImageIcon;

import org.hibernate.Session;

import controller.Controller;
import controller.conexion.Pasarela;
import controller.conexion.Server;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.EspaciosNaturales;

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
