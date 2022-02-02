package pruebas;

import java.util.List;

import controller.conexion.Query;
import controller.utilities.Utils;

public class PruebasEstaciones {

	public static void main(String[] args) {
		String estaciones = (new Query()).getEstacionesMun("Vitoria-Gasteiz");
		String muns = (new Query()).getMunicipios();
		List<String> a = Utils.getListFromJSON("nombre", "result", muns);
		System.out.println(estaciones);
		System.out.println("finish");
	}
}
