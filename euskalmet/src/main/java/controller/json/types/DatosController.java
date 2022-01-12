package controller.json.types;

import java.time.LocalDate;
import java.time.LocalTime;

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

	/**
	 * Recibe el nombre de una estación ubicada en el index.json y devuelve su respectivo objeto Estaciones
	 * Dado que los nombres del index no son iguales este método busca la equivalencia con el nombre de la estación guardado en la BBDD
	 * @param nombreIndex   String   Nombre de una estación ubicada en el índice
	 * @return              Estacion Objeto Estaciones encontrada
	 */
	private Estaciones getEstacionFromIndexName(String nombreIndex) {
		String[] partes = nombreIndex.split("_");
		Estaciones est = this.modelo.getDBController().getEstacionContaining(partes);
		return est;	
	}

	/**
	 * Recibe el objeto JSON de un grupo de datos y devuelve un objeto LocalDate con su fecha
	 * @param objetoJSON  JSONObject  Objeto JSON proveniente de estaciones.json
	 * @return            LocalDate   Objeto LocalDate con la fecha correspondiente
	 */
	private LocalDate getDate(JSONObject objetoJSON) {
		String fechaBruto = (String) objetoJSON.get("Date");
		String[] fechaPartes = fechaBruto.split("\\/");
		
		int dia = Integer.parseInt(fechaPartes[0]);
		int mes = Integer.parseInt(fechaPartes[1]);
		int year = Integer.parseInt(fechaPartes[2]);
		
		LocalDate fecha = LocalDate.of(year, mes, dia);
		
		return fecha;
	}
	
	/**
	 * Recibe el objeto JSON de un grupo de datos y devuelve un objeto LocalTime con su hora
	 * @param objetoJson  JSONObject  Objeto JSON proveniente de estaciones.json
	 * @return            LocalDate   Objeto LocalTime con la hora correspondiente
	 */
	private LocalTime getTime(JSONObject objetoJson) {
		String horaBruto = (String) objetoJson.get("HourGMT");
		String[] horaPartes = horaBruto.split(":");
		
		int hora = Integer.parseInt(horaPartes[0]);
		int parsedHora = hora == 24 ? 0 : hora; // Si la hora recibida del JSON es 24, la cambiamos por 0 para el LocalTime
		int minuto = Integer.parseInt(horaPartes[1]);
		
		LocalTime time = LocalTime.of(parsedHora, minuto);
		
		return time;
	}
	
	/**
	 * Rebibe un objeto JSON y devuelve un objeto Datos extrayendo sus datos
	 * @param objetoJSON
	 * @param est
	 * @return
	 */
	private Datos getDatos(JSONObject objetoJSON, Estaciones estacion) {		
		LocalDate fecha = getDate(objetoJSON);
		LocalTime time = getTime(objetoJSON);

     	Datos dat = new Datos();
     	dat.setId(new DatosId(estacion.getNombre(), fecha, time));
     	dat.setEstaciones(estacion);
     	dat.setComgm3(objetoJSON, "COmgm3");
     	dat.setCo8hmgm3(objetoJSON, "CO8hmgm3");
     	
     	dat.setNogm3(objetoJSON, "NOgm3");
     	
     	dat.setNo2gm3(objetoJSON, "NO2");
     	dat.setNo2ICA((String) objetoJSON.get("NO2ICA"));
     	
     	dat.setPm25gm3(objetoJSON, "PM25");
     	dat.setPm25ICA((String) objetoJSON.get("PM25ICA"));
     	
     	dat.setPm10gm3(objetoJSON, "PM10");
     	dat.setPm10ICA((String) objetoJSON.get("PM10ICA"));
     	
     	dat.setNoxgm3(objetoJSON, "NOXgm3");
     	
     	dat.setNo2gm3(objetoJSON, "NO2");
     	dat.setNo2ICA((String) objetoJSON.get("NO2ICA"));
     	
     	dat.setSo2gm3(objetoJSON, "SO2");
     	dat.setSo2ICA((String) objetoJSON.get("SO2ICA"));
     	
     	dat.setEstacionICA((String) objetoJSON.get("ICAEstacion"));
     	
     	return dat; 	
	}
	
	/**
	 * Recibe el index de los datos de todas las estaciones e inserta todos los datos en las URLs que encuentra
	 * @param path  String  Ruta del archivo index.json
	 */
	public void insertDatos(String path) { 
		JSONArray arrayIndice = getJSONArray(path, false);
		int cont = 0;
		for(int i = 0 ; i < arrayIndice.size() ; i++) {
    		JSONObject indiceDato = (JSONObject) arrayIndice.get(i);
        	String url = (String) indiceDato.get("url");
        	
        	if(url.contains("/datos_indice")) {
            	String content = parser.readURL(url, true);
    			String nombreEstacion = (String) indiceDato.get("name");
            	insertDatosEstacion(content, nombreEstacion);
        	}
        	
        	System.out.println("Completado " + ( ++cont ) + "/" + arrayIndice.size());

		}
				
	}
	
	/**
	 * Inserta los datos de una sola estación
	 * @param content         String  Datos de una estación recibidos de la url indicada en un objeto del index.json
	 * @param nombreEstacion  String  El nombre de la estación
	 */
	private void insertDatosEstacion(String content, String nombreEstacion) {
		JSONArray arrayDatos = getJSONArray(content, true);
    	Session sesion = this.modelo.getDBController().openSession();
    	Transaction transaction = sesion.beginTransaction();
    	
        for(int i = 0 ; i < arrayDatos.size() ; i++) {
        	JSONObject datosJson = (JSONObject) arrayDatos.get(i);
        	Estaciones estacion = getEstacionFromIndexName(nombreEstacion);
        	if (estacion == null) continue;
        	Datos datos = getDatos(datosJson, estacion);
        	sesion.save(datos);
        }
        
        transaction.commit();
        sesion.close();
        System.out.println("Datos commited for estación \"" + nombreEstacion + "");
	}
}
