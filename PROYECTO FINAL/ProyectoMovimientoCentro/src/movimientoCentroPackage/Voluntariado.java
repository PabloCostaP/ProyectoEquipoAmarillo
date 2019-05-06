package movimientoCentroPackage;

public class Voluntariado {

	private int cod_voluntario;
	private int cod_campanna;
	
	
	public Voluntariado() {
		
	}
	public Voluntariado(int cod_voluntario, int cod_campanna) {
		super();
		this.cod_voluntario = cod_voluntario;
		this.cod_campanna = cod_campanna;
	}
	
	public int getCod_voluntario() {
		return cod_voluntario;
	}
	public void setCod_voluntario(int cod_voluntario) {
		this.cod_voluntario = cod_voluntario;
	}
	public int getCod_campanna() {
		return cod_campanna;
	}
	public void setCod_campanna(int cod_campanna) {
		this.cod_campanna = cod_campanna;
	}
}
