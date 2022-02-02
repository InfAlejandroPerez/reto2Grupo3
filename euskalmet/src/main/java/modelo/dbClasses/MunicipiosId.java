package modelo.dbClasses;
// Generated 4 ene 2022 0:52:55 by Hibernate Tools 5.5.7.Final


/**
 * MunicipiosId generated by hbm2java
 */
public class MunicipiosId implements java.io.Serializable {

	private int codMunicipio;
	private int codProvincia;

	public MunicipiosId() {
	}

	public MunicipiosId(int codMunicipio, int codProvincia) {
		this.codMunicipio = codMunicipio;
		this.codProvincia = codProvincia;
	}

	public int getCodMunicipio() {
		return this.codMunicipio;
	}

	public void setCodMunicipio(int codMunicipio) {
		this.codMunicipio = codMunicipio;
	}

	public int getCodProvincia() {
		return this.codProvincia;
	}

	public void setCodProvincia(int codProvincia) {
		this.codProvincia = codProvincia;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof MunicipiosId))
			return false;
		MunicipiosId castOther = (MunicipiosId) other;

		return (this.getCodMunicipio() == castOther.getCodMunicipio())
				&& (this.getCodProvincia() == castOther.getCodProvincia());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getCodMunicipio();
		result = 37 * result + this.getCodProvincia();
		return result;
	}

}
