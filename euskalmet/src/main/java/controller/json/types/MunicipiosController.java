package controller.json.types;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import database.DBController;
import model.Modelo;
import model.Municipios;
import model.MunicipiosId;
import model.Provincia;

public class MunicipiosController extends JsonController {

	public MunicipiosController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}
	
	
	/**
	 * Recibe un objeto json y devuelve un objeto Municipios extrayendo sus datos
	 * Si el municipio ya existe en la BBDD devolver� una instancia del mismo
	 * @param objetoJSON
	 * @param municipioKey
	 * @param nombreKey
	 * @param descripcionKey
	 * @param pro
	 * @return
	 */
	protected Municipios getMunicipio(JSONObject objetoJSON, int codProvincia) {
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
	 * Recibe el nombre de un municipio, busca sus c�digos en el csv de Municipios, inserta el nuevo municipio en la BBDD y devuelve el objeto creado
	 * TODO: controlar excepciones en este metodo, no v�lido para pueblos que no existen en el csv
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
	
	/**
	 * Recibe un objeto json de un pueblo y devuelve un objeto Provincia extrayendo sus datos
	 * Si la Provincia ya existe en la BBDD devolver� una instancia de la misma
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
	 * Lee el archivo json de pueblos y los inserta en la BBDD
	 * @param path
	 */
	public void insertPueblos(String path) {		
        JSONArray arrayPueblos = getJSONArray(path, false);
        
        Session session = this.modelo.getDBController().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        
        for(int i = 0 ; i < arrayPueblos.size() ; i++) {
        	JSONObject objetoJSON = (JSONObject) arrayPueblos.get(i);
        	
        	Provincia pro = getProvincia(objetoJSON);        	
        	session.save(pro);
      
        	Municipios mun =munController.getMunicipio(objetoJSON, pro.getCodProvincia());
        	System.out.println(mun.getId().getCodMunicipio());
        	System.out.println(mun.getNombre());
        	session.saveOrUpdate(mun);
        }
        
        transaction.commit();
    }
}
