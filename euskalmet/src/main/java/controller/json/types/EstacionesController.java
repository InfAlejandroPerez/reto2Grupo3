package controller.json.types;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import model.Estaciones;
import model.Modelo;
import model.Municipios;

public class EstacionesController extends JsonController {

	public EstacionesController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}
	
	/**
	 * Recibe un objeto JSON y devuelve un objeto Estaciones extrayendo sus datos
	 * Se le ha de pasar la sesión por parámetro ya que necesita buscar el último elemento insertado en la sesión local o dará error
	 * TODO: sustituir atributos inherentes al json por parámetros de la función
	 * @param objetoJSON
	 * @param mun
	 * @param sesion
	 * @return
	 */
	private Estaciones getEstacion(JSONObject objetoJSON, Municipios mun, Session sesion) {
        String nombre = (String) objetoJSON.get("Name");
		Estaciones est = null;
		
		est = sesion.get(Estaciones.class, nombre);
		
		if(est == null) {
			est = new Estaciones();     	
	     	est.setMunicipios(mun);
	     	est.setNombre(nombre);
	     	est.setDireccion((String) objetoJSON.get("Address"));
	     	
	     	String latitude = (String) objetoJSON.get("Latitude");
	     	latitude = latitude.replace(',', '.');
	     	String longitude = (String) objetoJSON.get("Longitude");
	     	longitude = longitude.replace(',', '.');
	     	
	     	est.setCoordenadaX(Double.parseDouble(latitude));
	     	est.setCoordenadaY(Double.parseDouble(longitude));
		}
		
     	return est;
	}
	

	/**
	 * Lee el archivo json de estaciones y las inserta en la BBDD
	 * Si no existe el pueblo de una estación lo crea e inserta también
	 * @param path  String  Ruta del archivo
	 */
	public void insertEstaciones(String path) {
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
					mun = munController.createMunicipioFromName(nombrePueblo);
			}
			
			Estaciones es = getEstacion(estacion, mun, session);
			session.save(es);
		}
		
		transaction.commit();
		session.close();
	}
}
