package model;
// Generated 4 ene 2022 0:52:55 by Hibernate Tools 5.5.7.Final

/**
 * Hashes generated by hbm2java
 */
public class Hashes implements java.io.Serializable {

	private int codHash;
	private String url;

	public Hashes() {
	}

	public Hashes(int codHash, String url) {
		this.codHash = codHash;
		this.url = url;
	}

	public int getCodHash() {
		return this.codHash;
	}

	public void setCodHash(int codHash) {
		this.codHash = codHash;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}