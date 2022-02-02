package modelo.dbClasses;
// Generated 4 ene 2022 0:52:55 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

import modelo.jsonSerializable;

/**
 * Estaciones generated by hbm2java
 */
public class Estaciones implements java.io.Serializable, jsonSerializable {

	private String nombre;
	private Municipios municipios;
	private double coordenadaX;
	private String direccion;
	private double coordenadaY;
	private Set datoses = new HashSet(0);

	public Estaciones() {
	}

	public Estaciones(String nombre, Municipios municipios, double coordenadaX, String direccion, double coordenadaY) {
		this.nombre = nombre;
		this.municipios = municipios;
		this.coordenadaX = coordenadaX;
		this.direccion = direccion;
		this.coordenadaY = coordenadaY;
	}

	public Estaciones(String nombre, Municipios municipios, double coordenadaX, String direccion, double coordenadaY,
			Set datoses) {
		this.nombre = nombre;
		this.municipios = municipios;
		this.coordenadaX = coordenadaX;
		this.direccion = direccion;
		this.coordenadaY = coordenadaY;
		this.datoses = datoses;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Municipios getMunicipios() {
		return this.municipios;
	}

	public void setMunicipios(Municipios municipios) {
		this.municipios = municipios;
	}

	public double getCoordenadaX() {
		return this.coordenadaX;
	}

	public void setCoordenadaX(double coordenadaX) {
		this.coordenadaX = coordenadaX;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public double getCoordenadaY() {
		return this.coordenadaY;
	}

	public void setCoordenadaY(double coordenadaY) {
		this.coordenadaY = coordenadaY;
	}

	public Set getDatoses() {
		return this.datoses;
	}

	public void setDatoses(Set datoses) {
		this.datoses = datoses;
	}

	@Override
	public String toJSON() {
		return "{\"nombre\":"+"\""+nombre+"\", \"municipios\":"+"\""+municipios+"\",\n"
				+ "\"coordenadaX\":"+"\""+coordenadaX+"\",\n"
				+ "\"coordenadaY\":"+"\""+coordenadaY+"\",\n"
				+ "\"direccion\":"+"\""+direccion+"\"}";
	}

}
