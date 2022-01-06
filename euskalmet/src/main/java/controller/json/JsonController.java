package controller.json;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import controller.json.types.DatosController;
import controller.json.types.EstacionesController;
import controller.json.types.MunicipiosController;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.Datos;
import modelo.dbClasses.DatosId;
import modelo.dbClasses.Estaciones;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.MunicipiosId;
import modelo.dbClasses.Provincia;

public class JsonController {
	
	protected JsonParse parser;
	protected static String RESOURCES_PATH = "./src/main/resources/";
	protected static String FUENTES_PATH = RESOURCES_PATH + "fuentes/";
	protected static String JSON_PATH = FUENTES_PATH + "json/";
	protected static String CSV_PATH = FUENTES_PATH + "csv/";
	protected Modelo modelo;
	
	//protected MunicipiosController munController;
	//protected EstacionesController estController;
	//protected DatosController      datController;
	
	public JsonController(JsonParse parser, Modelo modelo) {
		//super();
		this.parser = parser;
		this.modelo = modelo;
		
		//munController = new MunicipiosController(parser, modelo);
		//estController = new EstacionesController(parser, modelo);
		//datController = new DatosController(parser, modelo);
	}

	/**
	 * Recibe una ruta / contenido de un json y devuelve su JSONArray correspondiente
	 * @param content        String    Ruta del archivo
	 * @param isContent      boolean   True si es el contenido de un JSON, false si es su ruta
	 * @return               JSONArray Array de objetos JSON resultante
	 */
	protected JSONArray getJSONArray(String content, boolean isContent) {
		String text = isContent ? content : JsonParse.readFile(content);
      	JSONParser parser = new JSONParser();
      	JSONArray ret = null;
        try{
            Object obj = parser.parse(text);
            JSONArray arrayObjetosJSON = (JSONArray)obj;
            return arrayObjetosJSON;
        } catch(Exception e) {
        	e.printStackTrace();
        }
		return ret;
	}
	
	/**
	 * Recibe el nombre de un municipio y devuelve su ID, buscado en el csv de municipios
	 * @param nombreMunicipio
	 * @return
	 */
	public int getMunicipioId(String nombreMunicipio) {
		Pattern pat = Pattern.compile("\"(.*)\",\"(.*)\",\"(" + nombreMunicipio + ")\"");
		Matcher mat = pat.matcher(JsonParse.readFile(FUENTES_PATH + "municipios/CodigosMunicipios.csv"));
		int ret = 0;
		if(mat.find()) {
			ret = Integer.parseInt(mat.group(2));
		}
		
		return ret;
	}
	
	/**
	 * Recibe el nombre de un municipio y devuelve el ID de su provincia, buscando en el csv de municipios
	 * @param nombreMunicipio
	 * @return
	 */
	public int getProvinciaId(String nombreMunicipio) {
		Pattern pat = Pattern.compile("\"(.*)\",\"(.*)\",\"(" + nombreMunicipio + ")\"");
		Matcher mat = pat.matcher(JsonParse.readFile(FUENTES_PATH + "municipios/CodigosMunicipios.csv"));
		int ret = 0;
		if(mat.find()) 
			ret = Integer.parseInt(mat.group(1));
		
		
		return ret;
	}
	

	/**
	 * Recibe el nombre de un municipio, busca sus códigos en el csv de Municipios, inserta el nuevo municipio en la BBDD y devuelve el objeto creado
	 * TODO: controlar excepciones en este metodo, no válido para pueblos que no existen en el csv
	 * @param nombre
	 * @return
	 */
	protected Municipios createMunicipioFromName(String nombre) {
		Session sesion = this.modelo.getDBController().getCurrentSession();
		int codMunicipio = getMunicipioId(nombre);
		int codProvincia = getProvinciaId(nombre);
		Transaction transaction = sesion.beginTransaction();
		
		//Provincia provincia = sesion.get(Provincia.class, codProvincia);
		MunicipiosId id = new MunicipiosId(codMunicipio, codProvincia);
		Municipios newMunicipio = new Municipios(id, nombre);
		
		sesion.save(newMunicipio);
		transaction.commit();
		
		return newMunicipio;
	}
	

	
	public static void main(String[] args) {
      	DBController bbddController = new DBController();
      	Modelo modelo = new Modelo(bbddController);
		JsonParse parser = new JsonParse();

		JsonController controller = new JsonController(parser, modelo);
		
      	String pathPueblosBruto = FUENTES_PATH + "municipios/pueblos.json";
		
      	// Municipios
      	MunicipiosController munController = new MunicipiosController(parser, modelo);
		//munController.insertPueblos(pathPueblosBruto);
      	
      	//Estaciones
      	EstacionesController estController = new EstacionesController(parser, modelo);
      	//estController.insertEstaciones(JSON_PATH + "estaciones.json");
      	
      	//Datos
      	DatosController datController = new DatosController(parser, modelo);
		//datController.insertDatosEstacion(parser.readURL("https://opendata.euskadi.eus/contenidos/ds_informes_estudios/calidad_aire_2021/es_def/adjuntos/datos_horarios/3_DE_MARZO.json", true));
      	String jsonIndex = JSON_PATH + "index.json";
      	datController.insertDatos(jsonIndex);
		System.out.println("finished");
	}
	
	// Getters and Setters
	public static String getJSON_PATH() {
		return JSON_PATH;
	}

	public static void setJSON_PATH(String jSON_PATH) {
		JSON_PATH = jSON_PATH;
	}


	public static String getCSV_PATH() {
		return CSV_PATH;
	}

	public static void setCSV_PATH(String cSV_PATH) {
		CSV_PATH = cSV_PATH;
	}
}
