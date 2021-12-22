package modelo;
// Generated 17 dic 2021 0:24:24 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Provincia generated by hbm2java
 */
public class Provincia implements java.io.Serializable {

	private int codProvincia;
	private String nombre;
	private Set municipioses = new HashSet(0);

	public Provincia() {
	}

	public Provincia(int codProvincia, String nombre) {
		this.codProvincia = codProvincia;
		this.nombre = nombre;
	}

	public Provincia(int codProvincia, String nombre, Set municipioses) {
		this.codProvincia = codProvincia;
		this.nombre = nombre;
		this.municipioses = municipioses;
	}

	public int getCodProvincia() {
		return this.codProvincia;
	}

	public void setCodProvincia(int codProvincia) {
		this.codProvincia = codProvincia;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Set getMunicipioses() {
		return this.municipioses;
	}

	public void setMunicipioses(Set municipioses) {
		this.municipioses = municipioses;
	}

}