package controller.json.types;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controller.json.JsonController;
import controller.json.JsonParse;
import modelo.Modelo;
import modelo.dbClasses.EspaciosNaturales;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.MunicipiosId;

public class EspaciosNaturalesController extends JsonController {

	public EspaciosNaturalesController(JsonParse parser, Modelo modelo) {
		super(parser, modelo);
	}
	
	private EspaciosNaturales getEspacio(JSONObject espacioJSON, Session sesion) {
		int codEspacio = this.modelo.getDBController().getLastEspacioId(sesion);
		EspaciosNaturales esp = sesion.get(EspaciosNaturales.class, codEspacio);
		
		esp = new EspaciosNaturales();
		esp.setCodEspacio(codEspacio + 1);
		esp.setNombre( (String)espacioJSON.get("documentName") );
		String descripcionBruto = (String)espacioJSON.get("turismDescription");
		esp.setDescripcion( this.parser.htmlToPlainText(descripcionBruto) );
			
		return esp;     	
	}
	
	public void insertEspaciosNaturales(String path) {
		JSONArray arrayEspacios = getJSONArray(path, false);
        
        Session session = this.modelo.getDBController().openSession();
        Transaction transaction = session.beginTransaction();
        
        for(int i = 0 ; i < arrayEspacios.size() ; i++) {
        	JSONObject objetoJSON = (JSONObject) arrayEspacios.get(i); 
        	
        	EspaciosNaturales espacio = getEspacio(objetoJSON, session);
        	session.save(espacio);
        }
        
        transaction.commit();
        session.close();
	}

}
