package controlador.json;

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

import database.DBController;
import modelo.Datos;
import modelo.DatosId;
import modelo.Estaciones;
import modelo.Modelo;
import modelo.Municipios;
import modelo.MunicipiosId;
import modelo.Provincia;

public class JsonController {
	
	private JsonParse parser;
	private static String RESOURCES_PATH = "./src/main/resources/";
	private static String FUENTES_PATH = RESOURCES_PATH + "fuentes/";
	private static String JSON_PATH = FUENTES_PATH + "json/";
	private static String CSV_PATH = FUENTES_PATH + "csv/";
	private Modelo modelo;
	
	public JsonController(JsonParse parser, Modelo modelo) {
		super();
		this.parser = parser;
		this.modelo = modelo;
	}

	/**
	 * Recibe un objeto json y devuelve un objeto Provincia extrayendo sus datos
	 * Si la Provincia ya existe en la BBDD devolver� una instancia de la misma
	 * 
	 * @param objetoJSON    JSONObject  Objeto json del que se extrae la provincia
	 * @return              Provincia   Objeto provincia resultante
	 */
	private Provincia getProvincia(JSONObject objetoJSON) {
		int codProvincia = Integer.parseInt((String) objetoJSON.get("territorycode"));
     	Provincia pro = modelo.getDBController().getCurrentSession().get(Provincia.class, codProvincia);
     	if(pro == null) {
     		pro = new Provincia();
     		pro.setCodProvincia(codProvincia);
         	pro.setNombre((String) objetoJSON.get("territory"));
     	}
     	
     	return pro;
	}
	
	/**
	 * Recibe un objeto json y devuelve un objeto Municipios extrayendo sus datos
	 * Si el municipio ya existe en la BBDD devolver� una instancia del mismo
	 *
	 * @param objetoJSON
	 * @param municipioKey
	 * @param nombreKey
	 * @param descripcionKey
	 * @param pro
	 * @return
	 */
	private Municipios getMunicipio(JSONObject objetoJSON, int codProvincia) {
        int codMunicipio = Integer.parseInt((String) objetoJSON.get("municipalitycode"));
    	Municipios mun = this.modelo.getDBController().getMunicipio(codMunicipio, codProvincia);
    	if(mun == null) {
    		mun = new Municipios();
    		mun.setNombre((String) objetoJSON.get("documentName"));
    		mun.setId(new MunicipiosId(codMunicipio, codProvincia));
         	mun.setDescripcion(this.parser.htmlToPlainText((String) objetoJSON.get("turismDescription")));
    	}
     	
     	return mun;
	}
	
	/**
	 * Recibe un objeto JSON y devuelve un objeto Estaciones extrayendo sus datos
	 * Se le ha de pasar la sesi�n por par�metro ya que necesita buscar el �ltimo elemento insertado en la sesi�n local o dar� error
	 * TODO: sustituir atributos inherentes al json por par�metros de la funci�n
	 * @param objetoJSON
	 * @param mun
	 * @param sesion
	 * @return
	 */
	private Estaciones getEstacion(JSONObject objetoJSON, Municipios mun, Session sesion) {
        Estaciones est = new Estaciones();
     	int lastEstacionId = modelo.getDBController().getLastEstacionId(sesion);
     	
     	est.setCodEstacion(lastEstacionId + 1);
     	est.setMunicipios(mun);
     	est.setNombre((String) objetoJSON.get("Name"));
     	est.setDireccion((String) objetoJSON.get("Address"));
     	
     	String latitude = (String) objetoJSON.get("Latitude");
     	latitude = latitude.replace(',', '.');
     	String longitude = (String) objetoJSON.get("Longitude");
     	longitude = longitude.replace(',', '.');
     	
     	est.setCoordenadaX(Double.parseDouble(latitude));
     	est.setCoordenadaY(Double.parseDouble(longitude));
     	
     	return est;
	}

	/**
	 * Rebibe un objeto JSON y devuelve un objeto Datos extrayendo sus datos
	 * @param objetoJSON
	 * @param est
	 * @return
	 */
	private Datos getDatos(JSONObject objetoJSON, Estaciones est) {
		LocalDate dia = LocalDate.of(2021, 12, 22);
		LocalTime hora = LocalTime.of(17, 45, 19);
     	Datos dat = new Datos();
     	//dat.setId(new DatosId(est.getCodEstacion(), dia, hora));
     	dat.setId(new DatosId(est.getCodEstacion(), new Date(), new Date()));
     	dat.setId(new DatosId(est.getCodEstacion(), new Date(), new Date()));
     	dat.setPrecipitaciones("dfdf");
     	dat.setEstaciones(est);
     	dat.setComgm3(6.66);
     	dat.setCo8hmgm3(4.4);
     	dat.setNogm3(5.5);
     	dat.setPm25gm3(1.1);
     	dat.setPm10gm3(7.7);
     	dat.setSo2gm3(8.8);
     	dat.setNoxgm3(54d);
     	
     	return dat; 	
	}

	/**
	 * Recibe una ruta / contenido de un json y devuelve su JSONArray correspondiente
	 * @param content        String    Ruta del archivo
	 * @param isContent   boolean   True si es el contenido de un JSON, false si es su ruta
	 * @return      JSONArray Array de objetos JSON resultante
	 */
	private JSONArray getJSONArray(String content, boolean isContent) {
		String s = isContent ? content : JsonParse.readFile(content);
      	JSONParser parser = new JSONParser();
      	JSONArray ret = null;
        try{
            Object obj = parser.parse(s);
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
	 * Recibe el nombre de un municipio, busca sus c�digos en el csv de Municipios, inserta el nuevo municipio en la BBDD y devuelve el objeto creado
	 * 
	 * TODO: controlar excepciones en este metodo, no v�lido para pueblos que no existen en el csv
	 * @param nombre
	 * @return
	 */
	private Municipios createMunicipioFromName(String nombre) {
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
	
	/**
	 * Lee el archivo json de estaciones y las inserta en la BBDD
	 * Si no existe el pueblo de una estaci�n lo crea e inserta tambi�n
	 * 
	 * @param path  String  Ruta del archivo
	 */
	private void insertEstaciones(String path) {
		JSONArray estaciones = getJSONArray(path, false);
		
		Session session = this.modelo.getDBController().openSession();
		Transaction transaction = session.beginTransaction();

		for(int i = 0 ; i < estaciones.size() ; i++ ) {

			JSONObject estacion = (JSONObject) estaciones.get(i);
			String nombrePueblo = (String) estacion.get("Town");
			Municipios mun = this.modelo.getDBController().getMunicipio(nombrePueblo);
			
			// Si no encuentro el municipio por el nombre busco su id en el csv de municipios
			if(mun == null) {
				int codMunicipio = getMunicipioId(nombrePueblo);
				int codProvincia = getProvinciaId(nombrePueblo);
				mun = this.modelo.getDBController().getMunicipio(codMunicipio, codProvincia);
				
				// Si no existe un municipio con ese id en la BBDD lo inserto
				if(mun == null)
					mun = createMunicipioFromName(nombrePueblo);
			}
			
			Estaciones es = getEstacion(estacion, mun, session);
			session.save(es);
		}
		
		transaction.commit();
		session.close();
	}
	
	/**
	 * Lee el archivo json de pueblos y los inserta en la BBDD
	 * @param path
	 */
	private void insertPueblos(String path) {
        JSONArray arrayPueblos = getJSONArray(path, false);
        
        Session session = this.modelo.getDBController().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        
        for(int i = 0 ; i < arrayPueblos.size() ; i++) {
        	JSONObject objetoJSON = (JSONObject) arrayPueblos.get(i);
        	
        	Provincia pro = getProvincia(objetoJSON);        	
        	session.save(pro);
      
        	Municipios mun = getMunicipio(objetoJSON, pro.getCodProvincia());
        	System.out.println(mun.getId().getCodMunicipio());
        	System.out.println(mun.getNombre());
        	session.saveOrUpdate(mun);
        }
        
        transaction.commit();
    }
	
	private void insertDatos(String content) {
		 JSONArray arrayDatos = getJSONArray(content, true);
	        
        Session session = this.modelo.getDBController().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        
        for(int i = 0 ; i < arrayDatos.size() ; i++) {
        	System.out.println(arrayDatos.get(i));
        }
	}
	
	public static void main(String[] args) {
      	DBController bbddController = new DBController();
      	Modelo modelo = new Modelo(bbddController);
		JsonParse parser = new JsonParse();
		
		JsonController controller = new JsonController(parser, modelo);
		
      	String pathPueblosBruto = FUENTES_PATH + "municipios/pueblos.json";
		//controller.insertPueblos(pathPueblosBruto);
      	//controller.insertEstaciones(JSON_PATH + "estaciones.json");
      	controller.insertDatos(parser.readURL("https://opendata.euskadi.eus/contenidos/ds_informes_estudios/calidad_aire_2021/es_def/adjuntos/datos_horarios/3_DE_MARZO.json", true));
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
