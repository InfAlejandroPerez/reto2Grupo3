package modelo;
// Generated 3 ene 2022 17:02:56 by Hibernate Tools 5.5.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Municipios generated by hbm2java
 */
public class Municipios implements java.io.Serializable {

	private MunicipiosId id;
	private Provincia provincia;
	private String nombre;
	private String descripcion;
	private Set usuarioses = new HashSet(0);
	private Set espaciosNaturaleses = new HashSet(0);
	private Set estacioneses = new HashSet(0);

	public Municipios() {
	}

	public Municipios(MunicipiosId id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public Municipios(MunicipiosId id, Provincia provincia, String nombre, String descripcion, Set usuarioses,
			Set espaciosNaturaleses, Set estacioneses) {
		this.id = id;
		this.provincia = provincia;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.usuarioses = usuarioses;
		this.espaciosNaturaleses = espaciosNaturaleses;
		this.estacioneses = estacioneses;
	}

	public MunicipiosId getId() {
		return this.id;
	}

	public void setId(MunicipiosId id) {
		this.id = id;
	}

	public Provincia getProvincia() {
		return this.provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Set getUsuarioses() {
		return this.usuarioses;
	}

	public void setUsuarioses(Set usuarioses) {
		this.usuarioses = usuarioses;
	}

	public Set getEspaciosNaturaleses() {
		return this.espaciosNaturaleses;
	}

	public void setEspaciosNaturaleses(Set espaciosNaturaleses) {
		this.espaciosNaturaleses = espaciosNaturaleses;
	}

	public Set getEstacioneses() {
		return this.estacioneses;
	}

	public void setEstacioneses(Set estacioneses) {
		this.estacioneses = estacioneses;
	}

}
