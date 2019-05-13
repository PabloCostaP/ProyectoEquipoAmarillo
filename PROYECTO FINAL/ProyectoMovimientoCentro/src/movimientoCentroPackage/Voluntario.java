package movimientoCentroPackage;

public class Voluntario extends Persona{

	private int cod_voluntario;
	private String email;
	private String telefono;
	private int autoriza_com;
	private int autoriza_gdpd;
	
	
	
	public Voluntario(String nombre, String apellidos, String fecha_nac) {
		super(nombre, apellidos, fecha_nac);
	}
	public Voluntario () {
		super();
	}
	public Voluntario(int cod_voluntario, String nombre, String apellidos, String fecha_nac, String email,
			String telefono, int autoriza_com, int autoriza_gdpd) {
		super(nombre, apellidos, fecha_nac);
		this.cod_voluntario = cod_voluntario;
		this.email = email;
		this.telefono = telefono;
		this.autoriza_com = autoriza_com;
		this.autoriza_gdpd = autoriza_gdpd;
	}
	
	public int getCod_voluntario() {
		return cod_voluntario;
	}
	public void setCod_voluntario(int cod_voluntario) {
		this.cod_voluntario = cod_voluntario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public int getAutoriza_com() {
		return autoriza_com;
	}
	public void setAutoriza_com(int autoriza_com) {
		this.autoriza_com = autoriza_com;
	}
	public int getAutoriza_gdpd() {
		return autoriza_gdpd;
	}
	public void setAutoriza_gdpd(int autoriza_gdpd) {
		this.autoriza_gdpd = autoriza_gdpd;
	}
}

