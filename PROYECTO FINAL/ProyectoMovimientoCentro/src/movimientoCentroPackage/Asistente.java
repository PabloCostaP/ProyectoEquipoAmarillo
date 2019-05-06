package movimientoCentroPackage;

public class Asistente {
	
	private int cod_voluntario;
	private int cod_evento;
	
	
	public Asistente() {
		
	}
	public Asistente(int cod_voluntario, int cod_evento) {
		super();
		this.cod_voluntario = cod_voluntario;
		this.cod_evento = cod_evento;
	}

	public int getCod_voluntario() {
		return cod_voluntario;
	}

	public void setCod_voluntario(int cod_voluntario) {
		this.cod_voluntario = cod_voluntario;
	}

	public int getCod_evento() {
		return cod_evento;
	}

	public void setCod_evento(int cod_evento) {
		this.cod_evento = cod_evento;
	}
}
