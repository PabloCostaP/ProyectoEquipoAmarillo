package movimientoCentroPackage;

public class Voluntario {

	private int cod_voluntario;
	private String nombre;
	private String apellidos;
	private String fecha_nac;
	private String email;
	private String telefono;
	private String autoriza_com;
	private String autoriza_gdpd;
	
	
	public Voluntario() {
		super();
	}
	public Voluntario(int cod_voluntario, String nombre, String apellidos, String fecha_nac, String email,
			String telefono, String autoriza_com, String autoriza_gdpd) {
		super();
		this.cod_voluntario = cod_voluntario;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.fecha_nac = fecha_nac;
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
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getFecha_nac() {
		return fecha_nac;
	}
	public void setFecha_nac(String fecha_nac) {
		this.fecha_nac = fecha_nac;
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
	public String getAutoriza_com() {
		return autoriza_com;
	}
	public void setAutoriza_com(String autoriza_com) {
		this.autoriza_com = autoriza_com;
	}
	public String getAutoriza_gdpd() {
		return autoriza_gdpd;
	}
	public void setAutoriza_gdpd(String autoriza_gdpd) {
		this.autoriza_gdpd = autoriza_gdpd;
	}
}

