package modelo;
// Generated 3 ene 2022 16:33:08 by Hibernate Tools 5.5.7.Final

import java.util.Date;

import model.DatosId;

/**
 * DatosId generated by hbm2java
 */
public class DatosId implements java.io.Serializable {

	private int codEstacion;
	private Date fecha;
	private Date hora;

	public DatosId() {
	}

	public DatosId(int codEstacion, Date fecha, Date hora) {
		this.codEstacion = codEstacion;
		this.fecha = fecha;
		this.hora = hora;
	}

	public int getCodEstacion() {
		return this.codEstacion;
	}

	public void setCodEstacion(int codEstacion) {
		this.codEstacion = codEstacion;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Date getHora() {
		return this.hora;
	}

	public void setHora(Date hora) {
		this.hora = hora;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DatosId))
			return false;
		DatosId castOther = (DatosId) other;

		return (this.getCodEstacion() == castOther.getCodEstacion())
				&& ((this.getFecha() == castOther.getFecha()) || (this.getFecha() != null
						&& castOther.getFecha() != null && this.getFecha().equals(castOther.getFecha())))
				&& ((this.getHora() == castOther.getHora()) || (this.getHora() != null && castOther.getHora() != null
						&& this.getHora().equals(castOther.getHora())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getCodEstacion();
		result = 37 * result + (getFecha() == null ? 0 : this.getFecha().hashCode());
		result = 37 * result + (getHora() == null ? 0 : this.getHora().hashCode());
		return result;
	}

}
