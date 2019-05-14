package movimientoCentroPackage;

public class Candidatura {

	private int cod_candidato;
	private int cod_campanna;
	private int cabeza_lista;
	private int posicion;
	
	
	public Candidatura() {
		
	}
	public Candidatura(int cod_candidato, int cod_campanna, int cabeza_lista, int posicion) {
		super();
		this.cod_candidato = cod_candidato;
		this.cod_campanna = cod_campanna;
		this.cabeza_lista = cabeza_lista;
		this.posicion = posicion;
	}
	
	
	public int getCod_candidato() {
		return cod_candidato;
	}
	public void setCod_candidato(int cod_candidato) {
		this.cod_candidato = cod_candidato;
	}
	public int getCod_campanna() {
		return cod_campanna;
	}
	public void setCod_campanna(int cod_campanna) {
		this.cod_campanna = cod_campanna;
	}
	public int getCabeza_lista() {
		return cabeza_lista;
	}
	public void setCabeza_lista(int cabeza_lista) {
		this.cabeza_lista = cabeza_lista;
	}
	public int getPosicion() {
		return posicion;
	}
	public void setPosicion(int posicion) {
		this.posicion = posicion;
	}
}
