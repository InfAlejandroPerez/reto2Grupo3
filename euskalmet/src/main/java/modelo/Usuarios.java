package modelo;
// Generated 17 dic 2021 0:24:24 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Usuarios generated by hbm2java
 */
public class Usuarios implements java.io.Serializable {

	private int codUsuario;
	private int nombre;
	private int password;
	private Set municipioses = new HashSet(0);
	private Set espaciosNaturaleses = new HashSet(0);

	public Usuarios() {
	}

	public Usuarios(int codUsuario, int nombre, int password) {
		this.codUsuario = codUsuario;
		this.nombre = nombre;
		this.password = password;
	}

	public Usuarios(int codUsuario, int nombre, int password, Set municipioses, Set espaciosNaturaleses) {
		this.codUsuario = codUsuario;
		this.nombre = nombre;
		this.password = password;
		this.municipioses = municipioses;
		this.espaciosNaturaleses = espaciosNaturaleses;
	}

	public int getCodUsuario() {
		return this.codUsuario;
	}

	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}

	public int getNombre() {
		return this.nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	public int getPassword() {
		return this.password;
	}

	public void setPassword(int password) {
		this.password = password;
	}

	public Set getMunicipioses() {
		return this.municipioses;
	}

	public void setMunicipioses(Set municipioses) {
		this.municipioses = municipioses;
	}

	public Set getEspaciosNaturaleses() {
		return this.espaciosNaturaleses;
	}

	public void setEspaciosNaturaleses(Set espaciosNaturaleses) {
		this.espaciosNaturaleses = espaciosNaturaleses;
	}

}
