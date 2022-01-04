package controller.json.types;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import model.Datos;
import model.DatosId;
import model.Estaciones;
import model.Modelo;

public class DatosController extends JsonController {

	public DatosController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}

	/**
	 * Rebibe un objeto JSON y devuelve un objeto Datos extrayendo sus datos
	 * @param objetoJSON
	 * @param est
	 * @return
	 */
	private Datos getDatos(JSONObject objetoJSON, Estaciones estacion) {
		LocalDate dia = LocalDate.of(2021, 12, 22);
		LocalTime hora = LocalTime.of(17, 45, 19);
     	Datos dat = new Datos();
     	dat.setId(new DatosId(estacion.getNombre(), new Date(), new Date()));
     	dat.setPrecipitaciones("dfdf");
     	dat.setEstaciones(estacion);
     	dat.setComgm3(6.66);
     	dat.setCo8hmgm3(4.4);
     	dat.setNogm3(5.5);
     	dat.setPm25gm3(1.1);
     	dat.setPm10gm3(7.7);
     	dat.setSo2gm3(8.8);
     	dat.setNoxgm3(54d);
     	
     	return dat; 	
	}
}
