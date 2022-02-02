package controller.json.types;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import database.DBController;
import modelo.Modelo;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.MunicipiosId;
import modelo.dbClasses.Provincia;

public class MunicipiosController extends JsonController {

	
	public MunicipiosController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}

	/**
	 * Recibe un objeto json y devuelve un objeto Municipios extrayendo sus datos
	 * Si el municipio ya existe en la BBDD devolverá una instancia del mismo
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
	 * Recibe un objeto json de un pueblo y devuelve un objeto Provincia extrayendo sus datos
	 * Si la Provincia ya existe en la BBDD devolverá una instancia de la misma
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
      
        	Municipios mun = this.getMunicipio(objetoJSON, pro.getCodProvincia());
        	System.out.println(mun.getId().getCodMunicipio());
        	System.out.println(mun.getNombre());
        	session.saveOrUpdate(mun);
        }
        
        transaction.commit();
    }
}
