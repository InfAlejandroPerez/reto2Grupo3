package pruebas;

import controller.conexion.Query;

public class PruebasEstaciones {

	public static void main(String[] args) {
		String estaciones = (new Query()).getEstacionesMun("Vitoria-Gasteiz");
		System.out.println(estaciones);
		System.out.println("finish");
	}
}
