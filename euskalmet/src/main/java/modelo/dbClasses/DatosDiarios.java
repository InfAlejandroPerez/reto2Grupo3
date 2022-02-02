package modelo.dbClasses;

import org.json.simple.JSONObject;

public class DatosDiarios implements java.io.Serializable {

	private DatosDiariosId id;
	private Estaciones estaciones;
	private Double comgm3;
	private Double co8hmgm3;
	private Double nogm3;
	private Double no2gm3;
	private Double noxgm3;
	private Double pm10gm3;
	private Double pm25gm3;
	private Double so2gm3;
	
	
	
	
	

	public DatosDiariosId getId() {
		return id;
	}
	public void setId(DatosDiariosId id) {
		this.id = id;
	}
	public Estaciones getEstaciones() {
		return estaciones;
	}
	public void setEstaciones(Estaciones estaciones) {
		this.estaciones = estaciones;
	}
	public Double getComgm3() {
		return comgm3;
	}
	
	// Comgm3
	public void setComgm3(Double comgm3) {
		this.comgm3 = comgm3;
	}
	
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setComgm3(JSONObject datosJSON, String datoKey) {
     	String cOmgm3 = (String) datosJSON.get(datoKey);
     	if(cOmgm3 != null) {
     		cOmgm3 = cOmgm3.replaceAll(",", ".");
     		this.setComgm3( Double.parseDouble(cOmgm3) );
     	}
	}
	public Double getCo8hmgm3() {
		return co8hmgm3;
	}
	
	// Co8hmgm3
	public void setCo8hmgm3(Double co8hmgm3) {
		this.co8hmgm3 = co8hmgm3;
	}
	
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setCo8hmgm3(JSONObject datosJSON, String datoKey) {
     	String co8hmgm3 = (String) datosJSON.get(datoKey);
     	if(co8hmgm3 != null) {
     		co8hmgm3 = co8hmgm3.replaceAll(",", ".");     		
     		this.setCo8hmgm3( Double.parseDouble(co8hmgm3) );
     	}
	}
	public Double getNogm3() {
		return nogm3;
	}
	
	// Nogm3
	public void setNogm3(Double nogm3) {
		this.nogm3 = nogm3;
	}
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setNogm3(JSONObject datosJSON, String datoKey) {
     	String nogm3 = (String) datosJSON.get(datoKey);
     	if(nogm3 != null) {
     		nogm3 = nogm3.replaceAll(",", ".");     		
     		this.setNogm3( Double.parseDouble(nogm3) );

     	}
	}
	
	public Double getNo2gm3() {
		return no2gm3;
	}

	// NO2gm3	
	
	public void setNo2gm3(Double no2gm3) {
		this.no2gm3 = no2gm3;
	}
	
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setNo2gm3(JSONObject datosJSON, String datoKey) {
     	String no2gm3 = (String) datosJSON.get(datoKey);
     	if(no2gm3 != null) {
     		no2gm3 = no2gm3.replaceAll(",", ".");     		
     		this.setNo2gm3( Double.parseDouble(no2gm3) );

     	}
	}
	
	// Noxgm3
	public Double getNoxgm3() {
		return noxgm3;
	}
	public void setNoxgm3(Double noxgm3) {
		this.noxgm3 = noxgm3;
	}
	
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setNoxgm3(JSONObject datosJSON, String datoKey) {
     	String noxgm3 = (String) datosJSON.get(datoKey);
     	if(noxgm3 != null) {
     		noxgm3 = noxgm3.replaceAll(",", ".");     		
     		this.setNoxgm3( Double.parseDouble(noxgm3) );
     	}
	}
	
	// Pm10gm3
	public Double getPm10gm3() {
		return pm10gm3;
	}
	public void setPm10gm3(Double pm10gm3) {
		this.pm10gm3 = pm10gm3;
	}
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setPm10gm3(JSONObject datosJSON, String datoKey) {
     	String pm10gm3 = (String) datosJSON.get(datoKey);
     	if(pm10gm3 != null) {
     		pm10gm3 = pm10gm3.replaceAll(",", ".");     		
     		this.setPm10gm3( Double.parseDouble(pm10gm3) );
     	}
	}
	// Pm25gm3
	public Double getPm25gm3() {
		return pm25gm3;
	}
	public void setPm25gm3(Double pm25gm3) {
		this.pm25gm3 = pm25gm3;
	}
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setPm25gm3(JSONObject datosJSON, String datoKey) {
     	String pm25gm3 = (String) datosJSON.get(datoKey);
     	if(pm25gm3 != null) {
     		pm25gm3 = pm25gm3.replaceAll(",", ".");     		
     		this.setPm25gm3( Double.parseDouble(pm25gm3) );
     	}
	}
	
	// So2gm3
	public Double getSo2gm3() {
		return so2gm3;
	}
	public void setSo2gm3(Double so2gm3) {
		this.so2gm3 = so2gm3;
	}
	
	/**
	 * Setter diseñado para recoger el atributo desde una url del index.json
	 * @param datosJSON
	 * @param datoKey
	 */
	public void setSo2gm3(JSONObject datosJSON, String datoKey) {
     	String so2gm3 = (String) datosJSON.get(datoKey);
     	if(so2gm3 != null) {
     		so2gm3 = so2gm3.replaceAll(",", ".");     		
     		this.setSo2gm3( Double.parseDouble(so2gm3) );
     	}
	}
}
