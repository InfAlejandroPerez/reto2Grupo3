package modelo.dbClasses;
// Generated 4 ene 2022 0:52:55 by Hibernate Tools 5.5.7.Final

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

/**
 * DatosId generated by hbm2java
 */
public class DatosId implements java.io.Serializable {

	private String nombreEstacion;
	private LocalDate fecha;
	private LocalTime hora;

	public DatosId() {
	}

	public DatosId(String nombreEstacion, LocalDate fecha, LocalTime hora) {
		this.setNombreEstacion(nombreEstacion);
		this.setFecha(fecha);
		this.setHora(hora);
	}

	

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DatosId))
			return false;
		DatosId castOther = (DatosId) other;

		return ((this.getNombreEstacion() == castOther.getNombreEstacion())
				|| (this.getNombreEstacion() != null && castOther.getNombreEstacion() != null
						&& this.getNombreEstacion().equals(castOther.getNombreEstacion())))
				&& ((this.getFecha() == castOther.getFecha()) || (this.getFecha() != null
						&& castOther.getFecha() != null && this.getFecha().equals(castOther.getFecha())))
				&& ((this.getHora() == castOther.getHora()) || (this.getHora() != null && castOther.getHora() != null
						&& this.getHora().equals(castOther.getHora())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getNombreEstacion() == null ? 0 : this.getNombreEstacion().hashCode());
		result = 37 * result + (getFecha() == null ? 0 : this.getFecha().hashCode());
		result = 37 * result + (getHora() == null ? 0 : this.getHora().hashCode());
		return result;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	public LocalTime getHora() {
		return hora;
	}

	public void setHora(LocalTime hora) {
		this.hora = hora;
	}

	public String getNombreEstacion() {
		return nombreEstacion;
	}

	public void setNombreEstacion(String nombreEstacion) {
		this.nombreEstacion = nombreEstacion;
	}

}