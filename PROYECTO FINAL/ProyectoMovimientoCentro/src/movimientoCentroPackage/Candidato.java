package movimientoCentroPackage;

public class Candidato extends Persona{

	private int cod_candidato;
	private String lugar_nac;
	private String municipio;
	private String provincia;
	private String autonomia;
	
	
	


	public Candidato() {
		super();
	}



	public Candidato(int cod_candidato, String nombre, String apellidos, String fecha_nac, String lugar_nac,
			String municipio, String provincia, String autonomia) {
		super(nombre, apellidos, fecha_nac);
		this.cod_candidato = cod_candidato;
		this.lugar_nac = lugar_nac;
		this.municipio = municipio;
		this.provincia = provincia;
		this.autonomia = autonomia;
	}



	public int getCod_candidato() {
		return cod_candidato;
	}
	public void setCod_candidato(int cod_candidato) {
		this.cod_candidato = cod_candidato;
	}
	public String getLugar_nac() {
		return lugar_nac;
	}
	public void setLugar_nac(String lugar_nac) {
		this.lugar_nac = lugar_nac;
	}
	public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getAutonomia() {
		return autonomia;
	}
	public void setAutonomia(String autonomia) {
		this.autonomia = autonomia;
	}
}
