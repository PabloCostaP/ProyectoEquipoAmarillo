package movimientoCentroPackage;

import java.util.ArrayList;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Main {

	public static void main(String[] args){
		// TODO Auto-generated method stub

		BDController controlador = new BDController();
		//ArrayList<Campanna> campannas = controlador.dameCampannas();
		//Noticia noticia = new Noticia(controlador.dameUltimoCodNoticia(), "Noticia importante", "Todo el cuerpazo de esta noticia importante", campannas.get(2).getCod_campanna());
		
		Candidato candidato = new Candidato(controlador.dameUltimoCodCandidato(), "Pepe", "Pepin Pepon", "1980-04-08", "Madrid", "Madrid", "Madrid", "Madrid");
		
		controlador.altaCandidato(candidato);
		System.out.println(candidato.getNombre()+" "+candidato.getCod_candidato());
	}

}
