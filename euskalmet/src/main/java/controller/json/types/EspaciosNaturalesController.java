package controller.json.types;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
	
	private List<Municipios> getMunicipios(JSONObject espacioJSON) {
		String codMunicipiosBruto = (String) espacioJSON.get("municipalitycode");
		String codProvinciasBruto = (String) espacioJSON.get("territorycode");
		
		List<Municipios> ret = new ArrayList<>();
		
		String[] codMunicipios = codMunicipiosBruto.split(" ");
		String[] codProvincias = codProvinciasBruto.split(" ");
		
		for( int i = 0 ; i < codMunicipios.length ; i++) {
			String strCodMunicipio = codMunicipios[i];
			String strCodProvincia = codProvincias[i];
			
			int codMunicipio = Integer.parseInt(strCodMunicipio);
			int codProvincia = Integer.parseInt(strCodProvincia);
			
			Municipios mun =  modelo.getDBController().getMunicipio(codMunicipio, codProvincia);
			
			if(mun == null) {
				mun = this.modelo.getDBController().getMunicipio(codMunicipio, codProvincia);
				
				// Si no existe un municipio con ese id en la BBDD lo inserto
				if(mun == null) {
					String nombreMunicipiosBruto = (String) espacioJSON.get("municipality");
					String[] nombresMunicipios = nombreMunicipiosBruto.split("\\*");
					String nombrePueblo = nombresMunicipios[i];
					
					mun = this.createMunicipioFromName(nombrePueblo);
				}
			}
			
			ret.add(mun);
				
		}
		
		return ret;
	}
	
	private EspaciosNaturales getEspacio(JSONObject espacioJSON, Session sesion) {
		int codEspacio = this.modelo.getDBController().getLastEspacioId(sesion);
		EspaciosNaturales esp = sesion.get(EspaciosNaturales.class, codEspacio);
		
		esp = new EspaciosNaturales();
		esp.setCodEspacio(codEspacio + 1);
		esp.setNombre( (String)espacioJSON.get("documentName") );
		String descripcionBruto = (String)espacioJSON.get("turismDescription");
		esp.setDescripcion( this.parser.htmlToPlainText(descripcionBruto) );
		
		Set<Municipios> municipios = new HashSet<>( getMunicipios(espacioJSON) );
		esp.setMunicipioses(municipios);
				
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
