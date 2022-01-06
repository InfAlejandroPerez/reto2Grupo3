package controller.json.types;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import modelo.Modelo;
import modelo.dbClasses.Datos;
import modelo.dbClasses.DatosId;
import modelo.dbClasses.Estaciones;

public class DatosController extends JsonController {

	public DatosController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}

	private Estaciones getEstacionFromIndexName(String nombreIndex) {
		String[] partes = nombreIndex.split("_");
		Estaciones est = this.modelo.getDBController().getEstacionContaining(partes);
		return est;	
	}
	
	/**
	 * Rebibe un objeto JSON y devuelve un objeto Datos extrayendo sus datos
	 * @param objetoJSON
	 * @param est
	 * @return
	 */
	private Datos getDatos(JSONObject objetoJSON, Estaciones estacion) {
		
		String fechaBruto = (String) objetoJSON.get("Date");
		String[] fechaPartes = fechaBruto.split("\\/");
		int dia = Integer.parseInt(fechaPartes[0]);
		int mes = Integer.parseInt(fechaPartes[1]);
		int year = Integer.parseInt(fechaPartes[2]);
		LocalDate fecha = LocalDate.of(year, mes, dia);
		
		String horaBruto = (String) objetoJSON.get("HourGMT");
		String[] horaPartes = horaBruto.split(":");
		int hora = Integer.parseInt(horaPartes[0]);
		int parsedHora = hora == 24 ? 0 : hora; // Si la hora recibida del JSON es 24, la cambiamos por 0 para el LocalTime
		int minuto = Integer.parseInt(horaPartes[1]);
		LocalTime time = LocalTime.of(parsedHora, minuto);
		
     	Datos dat = new Datos();
     	dat.setId(new DatosId(estacion.getNombre(), fecha, time));
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
	
	public void insertDatos(String path) {
		JSONArray arrayIndice = getJSONArray(path, false);
		
		 Session session = this.modelo.getDBController().getCurrentSession();
	     Transaction transaction = session.beginTransaction();
		
		for(int i = 0 ; i < arrayIndice.size() ; i++) {
        	JSONObject indiceDato = (JSONObject) arrayIndice.get(i);
        	
        	String nombreEstacion = (String) indiceDato.get("name");
        	String url = (String) indiceDato.get("url");
        	String content = parser.readURL(url, true);
        	
        	insertDatosEstacion(content, nombreEstacion);
        	System.out.println("Completado " + ( ++i ) + "/" + arrayIndice.size());
        	break;
		}
		
		transaction.commit();
		
	}
	
	private void insertDatosEstacion(String content, String nombreEstacion) {
		JSONArray arrayDatos = getJSONArray(content, true);
    	Session sesion = this.modelo.getDBController().getCurrentSession();

        for(int i = 0 ; i < arrayDatos.size() ; i++) {
        	JSONObject datosJson = (JSONObject) arrayDatos.get(i);
        	Estaciones estacion = getEstacionFromIndexName(nombreEstacion);
        	if (estacion == null) continue;
        	Datos datos = getDatos(datosJson, estacion);
        	System.out.println(arrayDatos.get(i));	
        }
	}
}
