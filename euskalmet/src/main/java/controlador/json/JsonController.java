package controlador.json;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import controlador.bbdd.BBDDController;
import controlador.hibernateUtilities.HibernateUtil;
import modelo.Datos;
import modelo.DatosId;
import modelo.Estaciones;
import modelo.Modelo;
import modelo.Municipios;
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

	private Provincia getProvincia(JSONObject objetoJSON, Session session) {
		int codProvincia = Integer.parseInt((String) objetoJSON.get("territorycode"));
     	Provincia pro = modelo.getBbddController().getProvincia(codProvincia);
     	if(pro == null) {
     		pro = new Provincia();
     		pro.setCodProvincia(codProvincia);
         	pro.setNombre((String) objetoJSON.get("territory"));
        	session.save(pro);
     	}
     	
     	return pro;
	}
	
	private Municipios getMunicipio(JSONObject objetoJSON, Provincia pro, Session session) {
        int codMunicipio = Integer.parseInt((String) objetoJSON.get("municipalitycode"));
    	Municipios mun = this.modelo.getBbddController().getMunicipio(codMunicipio);
    	if(mun == null) {
    		mun = new Municipios();
    		mun.setNombre((String) objetoJSON.get("documentName"));
         	mun.setCodMunicipio(codMunicipio);
         	mun.setProvincia(pro);
         	mun.setDescripcion(this.parser.htmlToPlainText((String) objetoJSON.get("turismDescription")));
        	session.save(mun);
    	}
     	
     	return mun;
	}
	
	private Estaciones getEstacion(JSONObject objetoJSON, Municipios mun, Session session) {
        Estaciones est = new Estaciones();
     	int lastEstacionId = modelo.getBbddController().getLastEstacionId();
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
     	
    	session.save(est);

     	return est;
	}

	private Datos getDatos(JSONObject objetoJSON, Estaciones est, Session session) {
		LocalDate dia = LocalDate.of(2021, 12, 22);
		LocalTime hora = LocalTime.of(17, 45, 19);
     	Datos dat = new Datos();
     	//dat.setId(new DatosId(est.getCodEstacion(), dia, hora));
     	dat.setId(new DatosId(est.getCodEstacion(), new Date(), new Date()));
     	dat.setId(new DatosId(est.getCodEstacion(), new Date(), new Date()));
     	dat.setPrecipitaciones("dfdf");
     	dat.setEstaciones(est);
     	dat.setcOmgm3(6.66);
     	dat.setcO8hmgm3(4.4);
     	dat.setnOgm3(5.5);
     	dat.setpM25gm3(1.1);
     	dat.setpM10gm3(7.7);
     	dat.setsO2gm3(8.8);
     	dat.setnOXgm3(54);
    	session.save(dat);

     	return dat; 	
	}

	private JSONArray getJSONArray(String path) {
		String s = this.parser.readFile(path);
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
	
	public int getMunicipioId(String nombreMunicipio) {
		Pattern pat = Pattern.compile("\"(.*)\",\"(.*)\",\"(" + nombreMunicipio + ")\"");
		Matcher mat = pat.matcher(JsonParse.readFile(FUENTES_PATH + "municipios/full.csv"));
		int ret = 0;
		if(mat.find()) {
			ret = Integer.parseInt(mat.group(2));
		}
		
		return ret;
	}
	
	public int getProvinciaId(String nombreMunicipio) {
		Pattern pat = Pattern.compile("\"(.*)\",\"(.*)\",\"(" + nombreMunicipio + ")\"");
		Matcher mat = pat.matcher(JsonParse.readFile(FUENTES_PATH + "municipios/full.csv"));
		int ret = 0;
		if(mat.find()) 
			ret = Integer.parseInt(mat.group(1));
		
		
		return ret;
	}
	
	private Municipios createMunicipioFromName(String nombre) {
		int codMunicipio = getMunicipioId(nombre);
		int codProvincia = getProvinciaId(nombre);
		Municipios ret = this.modelo.getBbddController().insertMunicipio(codMunicipio, nombre, codProvincia);
		return ret;
	}
	
	private void insertEstacionesFromJSON(String path) {
		JSONArray estaciones = getJSONArray(path);
		SessionFactory sessionFactory = this.modelo.getBbddController().getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		for(int i = 0 ; i < estaciones.size() ; i++ ) {
			JSONObject estacion = (JSONObject) estaciones.get(i);
			String nombrePueblo = (String) estacion.get("Town");
			Municipios mun = this.modelo.getBbddController().getMunicipio(nombrePueblo, session);
			if(mun != null)
				System.out.println(mun.getNombre());
			else {
				int codMunicipio = getMunicipioId(nombrePueblo);
				mun = this.modelo.getBbddController().getMunicipio(codMunicipio);
				if(mun == null)
					mun = createMunicipioFromName(nombrePueblo);

			}
			System.out.println(estacion);
			
			Estaciones es = getEstacion(estacion, mun, session);
			session.getTransaction().commit();
			session = sessionFactory.getCurrentSession();
            session.beginTransaction();
		}
	}
	
	private void insertPueblosFromJSON(String path) {
        JSONArray arrayPueblos = getJSONArray(path);
        
        SessionFactory sessionFactory = this.modelo.getBbddController().getSessionFactory();
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        
        for(int i = 0 ; i < arrayPueblos.size() ; i++) {
        	JSONObject objetoJSON = (JSONObject) arrayPueblos.get(i);
        	
        	// Provincia
        	Provincia pro = getProvincia(objetoJSON, session);
        	
        	// Municipio
        	Municipios mun = getMunicipio(objetoJSON, pro, session);

        	// Estaciones
         	Estaciones est = getEstacion(objetoJSON, mun, session);

         	// Datos
        	Datos dat = getDatos(objetoJSON, est, session);
            session.getTransaction().commit();
            session.beginTransaction();
        }
       
    }
	public static void main(String[] args) {
      	BBDDController bbddController = new BBDDController();
      	Modelo modelo = new Modelo(bbddController);
		JsonParse parser = new JsonParse();
		
		JsonController controller = new JsonController(parser, modelo);
		
      	String pathPueblosBruto = JSON_PATH + "pueblos.json";
		//controller.insertPueblosFromJSON(pathJsonBruto);
      	controller.insertEstacionesFromJSON(JSON_PATH + "estaciones.json");
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
