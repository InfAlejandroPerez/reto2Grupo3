package modelo;
// Generated 16 dic 2021 19:10:29 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Usuarios generated by hbm2java
 */
public class Usuarios implements java.io.Serializable {

	private int codUsuario;
	private int nombre;
	private int contraseña;
	private Set municipioses = new HashSet(0);
	private Set espaciosNaturaleses = new HashSet(0);

	public Usuarios() {
	}

	public Usuarios(int codUsuario, int nombre, int contraseña) {
		this.codUsuario = codUsuario;
		this.nombre = nombre;
		this.contraseña = contraseña;
	}

	public Usuarios(int codUsuario, int nombre, int contraseña, Set municipioses, Set espaciosNaturaleses) {
		this.codUsuario = codUsuario;
		this.nombre = nombre;
		this.contraseña = contraseña;
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

	public int getContraseña() {
		return this.contraseña;
	}

	public void setContraseña(int contraseña) {
		this.contraseña = contraseña;
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
