package movimientoCentroPackage;

import java.util.ArrayList;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Main {

	public static void main(String[] args){
		// TODO Auto-generated method stub

		BDController controlador = new BDController();
		
		
		
		
		
		
		
		/* Alta de una noticia
		
		ArrayList<Campanna> campannas = controlador.dameCampannas();
		Noticia noticia = new Noticia(controlador.dameUltimoCodNoticia(), "Noticia importante 2", "Todo edssgsfg fgdfdfg gdfcia importante", campannas.get(2).getCod_campanna());
		controlador.altaNoticia(noticia); */
		
		
		// Alta de un candidato
		
		/* Candidato candidato = new Candidato(controlador.dameUltimoCodCandidato(), "Aaaa", "fdsfdsfdsfds fdfds", "1980-04-08", "Madrid", "Madrid", "Madrid", "Madrid");
		
		controlador.altaCandidato(candidato);
		
		// Alta de una candidatura (Hace falta dar de alta un candidato)
		
		Campanna campanna = new Campanna(3, "Nacional", "Nacional");
		controlador.altaCandidatura(candidato, campanna, 1, 1); */
		//Campanna campanna = new Campanna(3, "Nacional", "Nacional");
	
		// Alta de un evento
		/* 
		Evento evento = new Evento(1, "Descripcion", "Madrid", 17, "11:00:00","Nombre del evento","Tipo del evento", "Madrid", 3);
		controlador.altaEvento(evento); */
		
		// Alta de los puntos de programa
		
		Programa programa = new Programa (controlador.dameUltimoCodPrograma(), "AFDSF SFDSF DSF SFS del punto", 2);
		controlador.altaPrograma(programa); 
	}
}
