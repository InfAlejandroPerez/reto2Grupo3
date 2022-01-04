package modelo;
// Generated 3 ene 2022 16:33:08 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Provincia generated by hbm2java
 */
public class Provincia implements java.io.Serializable {

	private int codProvincia;
	private String nombre;
	private Set municipioses = new HashSet(0);
	private Set municipioses_1 = new HashSet(0);

	public Provincia() {
	}

	public Provincia(int codProvincia, String nombre) {
		this.codProvincia = codProvincia;
		this.nombre = nombre;
	}

	public Provincia(int codProvincia, String nombre, Set municipioses, Set municipioses_1) {
		this.codProvincia = codProvincia;
		this.nombre = nombre;
		this.municipioses = municipioses;
		this.municipioses_1 = municipioses_1;
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

	public Set getMunicipioses_1() {
		return this.municipioses_1;
	}

	public void setMunicipioses_1(Set municipioses_1) {
		this.municipioses_1 = municipioses_1;
	}

}