package movimientoCentroPackage;

public class Programa {

	private int cod_punto;
	private String descripcion;
	private int cod_campanna;
	
	public Programa() {
		
	}
	public Programa(int cod_punto, String descripcion, int cod_campanna) {
		super();
		this.cod_punto = cod_punto;
		this.descripcion = descripcion;
		this.cod_campanna = cod_campanna;
	}
	
	public int getCod_punto() {
		return cod_punto;
	}
	public void setCod_punto(int cod_punto) {
		this.cod_punto = cod_punto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getCod_campanna() {
		return cod_campanna;
	}
	public void setCod_campanna(int cod_campanna) {
		this.cod_campanna = cod_campanna;
	}
}
