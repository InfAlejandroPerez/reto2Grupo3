package controller.json.types;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.common.hash.Hashing;

import controller.json.JsonController;
import controller.json.JsonParse;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.Datos;
import modelo.dbClasses.DatosDiarios;
import modelo.dbClasses.DatosDiariosId;
import modelo.dbClasses.DatosId;
import modelo.dbClasses.Estaciones;
import modelo.dbClasses.Hashes;

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
     	
     	dat.setSo2gm3(objetoJSON, "SO2");
     	dat.setSo2ICA((String) objetoJSON.get("SO2ICA"));
     	
     	dat.setEstacionICA((String) objetoJSON.get("ICAEstacion"));
     	
     	return dat; 	
	}
	
	private DatosDiarios getDatosDiarios(JSONObject objetoJSON, Estaciones estacion) {
		LocalDate fecha = getDate(objetoJSON);
		DatosDiarios datDiario = new DatosDiarios();
		datDiario.setId(new DatosDiariosId(estacion.getNombre(), fecha));
		datDiario.setEstaciones(estacion);
		
		datDiario.setComgm3(objetoJSON, "COmgm3");
		datDiario.setCo8hmgm3(objetoJSON, "CO8hmgm3");
     	
		datDiario.setNogm3(objetoJSON, "NOgm3");
		datDiario.setNo2gm3(objetoJSON, "NO2gm3");
		datDiario.setPm25gm3(objetoJSON, "PM25gm3");
		datDiario.setPm10gm3(objetoJSON, "PM10gm3");     	
		datDiario.setNoxgm3(objetoJSON, "NOXgm3");
		datDiario.setSo2gm3(objetoJSON, "SO2gm3");

		
		return datDiario;
	}
	
	private boolean isCached(String url) {
		Hashes hash = this.modelo.getDBController().getHash(url);
		return hash != null;
	}
	
	public String getLastUpdatedDate(String content) {
		String regex = "\"lastUpdateDate\": \"(.*?)\"";
		String ret = null;
		Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(content);
        
        if (matcher.find()) 
        	ret = matcher.group(1);
            
     return ret;       
	}
	
	private String searchLastUpdatedDate(String path) {
		System.out.println("Reading content from: " + path);
    	String[] commands =  {"curl", "-X", "GET", path};
    	Process process = null;
    	String ret = "";
		try {
			process = Runtime.getRuntime().exec(commands);
			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()) );
	    	String line;
	    	
	    	String date;
	    	while ((line = reader.readLine()) != null) 
	    	    if((date = getLastUpdatedDate(line)) != null) return date;
	    	
		} catch (IOException e) {
			e.printStackTrace();
		}		
    	return ret;	
	}
	
	private void storeInCache(String indexContent, String path, String datosDateTime, String parsed) {
		this.parser.printIntoFile(JSON_PATH + "cached/datos-"+parsed+".json", indexContent);
		
		String sha256hex = Hashing.sha256()
				.hashString(datosDateTime, StandardCharsets.UTF_8)
				.toString();	
		System.out.println("Saved " + path + " in cached folder.");
		this.modelo.getDBController().setHash(path, sha256hex);
	}
	
	/**
	 * Recibe el index de los datos de todas las estaciones e inserta todos los datos en las URLs que encuentra
	 * @param path  String  Ruta del archivo index.json
	 */
	public void insertDatos(String path) { 
		String indexContent;
    	boolean cached = isCached(path);
    	
    	String datosDateTime = searchLastUpdatedDate(path);
    	String parsed = datosDateTime.replaceAll(" ", "_").replaceAll(":", "-");
    	
    	if(cached) {
    		indexContent = this.parser.readFile(JSON_PATH + "cached/datos-"+parsed+".json");
    	}
    	else {
    		indexContent = parser.readURL(path, true);
    		storeInCache(indexContent, path, datosDateTime, parsed);
    	}
    	
    	JSONObject obj = getJSONObject(indexContent, true);
		JSONArray arrayIndice = (JSONArray) obj.get("aggregated");
		int cont = 0;
    	
		for(int i = 0 ; i < arrayIndice.size() ; i++) {
    		JSONObject indiceDato = (JSONObject) arrayIndice.get(i);
        	String url = (String) indiceDato.get("url");
        	
        	if(url.contains("/datos_indice")) {
        		String content = this.parser.readURL(url, true);
    			String nombreEstacion = (String) indiceDato.get("name");
            	insertDatosEstacion(content, nombreEstacion, false);
        	}
        	//else if (url.contains("/datos_diarios")) {
        		//String content = parser.readURL(url, true);
    			//String nombreEstacion = (String) indiceDato.get("name");
            	//insertDatosEstacion(content, nombreEstacion, true);
        	//}
        	
        	System.out.println("Completado " + ( ++cont ) + "/" + arrayIndice.size());

		}
				
	}
	
	/**
	 * Inserta los datos de una sola estación
	 * @param content         String  Datos de una estación recibidos de la url indicada en un objeto del index.json
	 * @param nombreEstacion  String  El nombre de la estación
	 */
	private void insertDatosEstacion(String content, String nombreEstacion, boolean sonDatosDiarios) {
		JSONArray arrayDatos = getJSONArray(content, true);
    	Session sesion = this.modelo.getDBController().openSession();
    	Transaction transaction = sesion.beginTransaction();
    	
    	int count = 0;
        for(int i = 0 ; i < arrayDatos.size() ; i++) {
        	JSONObject datosJson = (JSONObject) arrayDatos.get(i);
        	Estaciones estacion = getEstacionFromIndexName(nombreEstacion);
        	if(count == 20) break;
        	if (estacion == null) continue;
        	
        	if(sonDatosDiarios) {
        		DatosDiarios datosDiarios = getDatosDiarios(datosJson, estacion);
        		sesion.save(datosDiarios);
        	}
        	else {
        		
        		Datos datos = getDatos(datosJson, estacion);
        		sesion.save(datos);        		
        	}
        	
        	count++;
        	
        	
        }
        
        transaction.commit();
        sesion.close();
        System.out.println("Datos commited for estación \"" + nombreEstacion + "");
	}
}
