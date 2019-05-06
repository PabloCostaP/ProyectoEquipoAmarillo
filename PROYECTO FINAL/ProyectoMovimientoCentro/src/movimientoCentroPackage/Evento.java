package movimientoCentroPackage;

public class Evento {

	private int cod_evento;
	private String descripcion;
	private String ubicacion;
	private int dia;
	private String hora;
	private String nombre;
	private int cod_campanna;
	private String municipio;
	
	public Evento() {
		
	}
	public Evento(int cod_evento, String descripcion, String ubicacion, int dia, String hora, String nombre,
			int cod_campanna, String municipio) {
		super();
		this.cod_evento = cod_evento;
		this.descripcion = descripcion;
		this.ubicacion = ubicacion;
		this.dia = dia;
		this.hora = hora;
		this.nombre = nombre;
		this.cod_campanna = cod_campanna;
		this.municipio = municipio;
	}
	
	public int getCod_evento() {
		return cod_evento;
	}
	public void setCod_evento(int cod_evento) {
		this.cod_evento = cod_evento;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public int getDia() {
		return dia;
	}
	public void setDia(int dia) {
		this.dia = dia;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCod_campanna() {
		return cod_campanna;
	}
	public void setCod_campanna(int cod_campanna) {
		this.cod_campanna = cod_campanna;
	}
	public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}
}
