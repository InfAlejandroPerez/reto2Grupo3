package modelo.dbClasses;

import java.time.LocalDate;
import java.util.Objects;

public class DatosDiariosId implements java.io.Serializable {

	private String nombreEstacion;
	private LocalDate dia;
	
	
	
	
	public DatosDiariosId(String nombreEstacion, LocalDate dia) {
		super();
		this.nombreEstacion = nombreEstacion;
		this.dia = dia;
	}
	public String getNombreEstacion() {
		return nombreEstacion;
	}
	public void setNombreEstacion(String nombreEstacion) {
		this.nombreEstacion = nombreEstacion;
	}
	public LocalDate getDia() {
		return dia;
	}
	public void setDia(LocalDate dia) {
		this.dia = dia;
	}
	@Override
	public int hashCode() {
		return Objects.hash(dia, nombreEstacion);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DatosDiariosId other = (DatosDiariosId) obj;
		return Objects.equals(dia, other.dia) && Objects.equals(nombreEstacion, other.nombreEstacion);
	}
	
	
	
}
