package movimientoCentroPackage;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class BDController {

	private Connection miConexion;
	
	
	
	/* ------ Conexión a la base de datos ------ */
	public BDController () {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			this.miConexion = DriverManager.getConnection("jdbc:mysql://localhost/movimientobd", "root", "");
			//this.miConexion = DriverManager.getConnection("jdbc:mysql://localhost/FIFA", "root", "");
			
		} catch (SQLException e) {
			System.out.println("Error en constructor BDController" + e.getMessage());
		}
		

	
	}
	
	
	/* ------ Consultas a la base de datos ------ */
	public ArrayList<Asistente> dameAsistentes() {
		ArrayList<Asistente> asistentes = new ArrayList<Asistente>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from asistentes");
			while (rs.next() == true) {
				asistentes.add(new Asistente(rs.getInt(1), rs.getInt(2)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameAsistente del BDController" + e.getMessage());
		}
		return asistentes;
	}
	
	public ArrayList<Campanna> dameCampannas() {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna");
			while (rs.next() == true) {
				campannas.add(new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas del BDController" + e.getMessage());
		}
		return campannas;
	}
	
	public ArrayList<Campanna> dameCampannas_nacionales() {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where cod_campanna = 1");
			while (rs.next() == true) {
				campannas.add(new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas del BDController" + e.getMessage());
		}
		return campannas;
	}
	
	public ArrayList<Campanna> dameCampannas_europeas() {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where cod_campanna = 2");
			while (rs.next() == true) {
				campannas.add(new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas Europeas del BDController" + e.getMessage());
		}
		return campannas;
	}
	public ArrayList<Campanna> dameCampannas_autonomicas() {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where tipo = 'Autonómica' ");
			while (rs.next() == true) {
				campannas.add(new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas Autonomicas del BDController" + e.getMessage());
		}
		return campannas;
	}
	
	public ArrayList<Campanna> dameCampannas_municipales() {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where tipo = 'Municipal' ");
			while (rs.next() == true) {
				campannas.add(new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas Autonomicas del BDController" + e.getMessage());
		}
		return campannas;
	}
	
	public Campanna dameCampanna_autonomica_ambito(String ambito) {
		ArrayList<Campanna> campannas = new ArrayList<Campanna>();
		Campanna campanna = new Campanna();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where ambito ="+ambito);
			while (rs.first() == true) {
				campanna =  new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas autonomicas ambito del BDController" + e.getMessage());
		}
		return campanna;
	}
	
	public Campanna dameCampanna_codCampanna(int cod_campanna) {
		Campanna campanna = new Campanna();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where cod_campanna = "+cod_campanna);
			while (rs.next() == true) {
				campanna =  new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas autonomicas por cod campanna del BDController" + e.getMessage());
		}
		return campanna;
	}
	
	public Campanna dameCampanna_autonomica_codCampanna(int cod_campanna) {
		Campanna campanna = new Campanna();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where cod_campanna = "+cod_campanna+" AND tipo = \"Autonómica\"");
			while (rs.next() == true) {
				campanna =  new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas autonomicas por cod campanna del BDController" + e.getMessage());
		}
		return campanna;
	}
	
	public Campanna dameCampanna_municipal_codCampanna(int cod_campanna) {
		Campanna campanna = new Campanna();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM campanna where cod_campanna = "+cod_campanna+" AND tipo = \"Municipal\"");
			while (rs.next() == true) {
				campanna =  new Campanna(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCampannas municipal por cod campanna del BDController" + e.getMessage());
		}
		return campanna;
	}
	
	
	public ArrayList<Candidato> dameCandidatos() {
		ArrayList<Candidato> candidatos = new ArrayList<Candidato>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from candidatos");
			while (rs.next() == true) {
				candidatos.add(new Candidato(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidatos del BDController" + e.getMessage());
		}
		return candidatos;
	}
	public ArrayList<Candidato> dameCandidatos_eleccionesNacionales(){
		ArrayList<Candidato> candidatos = new ArrayList<Candidato>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM candidatos LEFT JOIN candidaturas ON candidatos.cod_candidato = candidaturas.cod_candidato WHERE candidaturas.cod_campanna = 1");
			while (rs.next() == true) {
				candidatos.add(new Candidato(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidatos del BDController" + e.getMessage());
		}
		
		
		return candidatos;
	}
	
	public ArrayList<Candidato> dameCandidatos_eleccionesEuropeas(){
		ArrayList<Candidato> candidatos = new ArrayList<Candidato>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM candidatos LEFT JOIN candidaturas ON candidatos.cod_candidato = candidaturas.cod_candidato WHERE candidaturas.cod_campanna = 2");
			while (rs.next() == true) {
				candidatos.add(new Candidato(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidato Europeas del BDController" + e.getMessage());
		}
		
		
		return candidatos;
	}
	
	public ArrayList<Candidato> dameCandidatos_elecciones_codCampanna(int cod_campanna){
		ArrayList<Candidato> candidatos = new ArrayList<Candidato>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT * FROM candidatos LEFT JOIN candidaturas ON candidatos.cod_candidato = candidaturas.cod_candidato WHERE candidaturas.cod_campanna ="+cod_campanna);
			while (rs.next() == true) {
				candidatos.add(new Candidato(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidato Autonomicas del BDController" + e.getMessage());
		}
		return candidatos;
	}
	
	public ArrayList<Candidatura> dameCandidaturas() {
		ArrayList<Candidatura> candidaturas = new ArrayList<Candidatura>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from candidaturas");

			while (rs.next() == true) {
				candidaturas.add(new Candidatura(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidaturas del BDController" + e.getMessage());
		}
		return candidaturas;
	}
	
	public ArrayList<Candidatura> dameCandidaturas_eleccionesNacioales() {
		ArrayList<Candidatura> candidaturas = new ArrayList<Candidatura>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from candidaturas where cod_campanna = 1");

			while (rs.next() == true) {
				candidaturas.add(new Candidatura(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidaturas del BDController" + e.getMessage());
		}
		return candidaturas;
	}
	/*no se usa de momento*/
	public Candidatura dameCandidatura_por_codCampanna(int cod_campanna) {
		Candidatura candidatura = new Candidatura();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from candidaturas where cod_campanna = "+cod_campanna+"");

			while (rs.next() == true) {
				candidatura  = new Candidatura(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidatura por cod campanna del BDController" + e.getMessage());
		}
		return candidatura;
	}
	


	

	public ArrayList<Candidatura> dameCandidaturas_eleccioneEuropeas() {
		ArrayList<Candidatura> candidaturas = new ArrayList<Candidatura>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from candidaturas where cod_campanna = 2");
			while (rs.next() == true) {
				candidaturas.add(new Candidatura(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidaturas del BDController" + e.getMessage());
		}
		return candidaturas;
	}
	
	public ArrayList<Candidatura> dameCandidaturas_eleccionesAutonomicas() {
		ArrayList<Candidatura> candidaturas = new ArrayList<Candidatura>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from candidaturas where cod_campanna = 3");

			while (rs.next() == true) {
				candidaturas.add(new Candidatura(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidaturas Autonomicas del BDController" + e.getMessage());
		}
		return candidaturas;
	}
	
	public ArrayList<Evento> dameEventos() {
		ArrayList<Evento> eventos = new ArrayList<Evento>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from eventos");
			while (rs.next() == true) {
				eventos.add(new Evento(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7),rs.getString(8), rs.getInt(9)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameEventos del BDController" + e.getMessage());
		}
		return eventos;
	}
	
	public ArrayList<Noticia> dameNoticias() {
		ArrayList<Noticia> noticias = new ArrayList<Noticia>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from noticias");
			while (rs.next() == true) {
				noticias.add(new Noticia(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameNoticias del BDController" + e.getMessage());
		}
		return noticias;
	}
	
	public ArrayList<Programa> dameProgramas() {
		ArrayList<Programa> programas = new ArrayList<Programa>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from programa");
			while (rs.next() == true) {
				programas.add(new Programa(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameProgramas del BDController" + e.getMessage());
		}
		return programas;
	}
	public ArrayList<Programa> dameProgramasEleccionesNacionales() {
		ArrayList<Programa> programas = new ArrayList<Programa>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from programa where cod_campanna = 1 ");
			while (rs.next() == true) {
				programas.add(new Programa(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameProgramasEleccionesNacionales del BDController" + e.getMessage());
		}
		return programas;
	}
	
	public ArrayList<Programa> dameProgramasEleccionesEuropeas() {
		ArrayList<Programa> programas = new ArrayList<Programa>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from programa where cod_campanna = 2 ");
			while (rs.next() == true) {
				programas.add(new Programa(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameProgramasEleccionesEuropeas del BDController" + e.getMessage());
		}
		return programas;
	}
	
	
	
	public ArrayList<Programa> dameProgramasEleccionesCodCampanna(int cod_campanna) {
		ArrayList<Programa> programas = new ArrayList<Programa>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select * from programa where cod_campanna ="+cod_campanna);
			while (rs.next() == true) {
				programas.add(new Programa(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameProgramasEleccionesNacionales Autonomicas del BDController" + e.getMessage());
		}
		return programas;
	}
	
	public ArrayList<Voluntariado> dameVoluntariados() {
		ArrayList<Voluntariado> voluntariados = new ArrayList<Voluntariado>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from voluntariados");
			while (rs.next() == true) {
				voluntariados.add(new Voluntariado(rs.getInt(1), rs.getInt(2)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameVoluntariados del BDController" + e.getMessage());
		}
		return voluntariados;
	}
	
	public ArrayList<Voluntario> dameVoluntario() {
		ArrayList<Voluntario> voluntarios = new ArrayList<Voluntario>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from voluntarios");
			while (rs.next() == true) {
				voluntarios.add(new Voluntario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameVoluntario del BDController" + e.getMessage());
		}
		return voluntarios;
	}
	
	/* ------ Altas en la base de datos ------ */
	
	
	/* CANDIDATOS */
	public int dameUltimoCodCandidato () {
		int codigo=0;
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT max(cod_candidato) from candidatos");
			if (rs.first() == true) {
				codigo=rs.getInt(1)+1;
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameUltimoCodCandidato del BDController" + e.getMessage());
		}
		return codigo;
	}
	
	public void altaCandidato (Candidato candidato) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO candidatos VALUES (" + candidato.getCod_candidato() + ",'" + candidato.getNombre() + "', '" + candidato.getApellidos() + "', '"
					+ candidato.getFecha_nac() + "', '" + candidato.getLugar_nac() + "', '" + candidato.getMunicipio() + "', '"
					+ candidato.getProvincia() + "', '" + candidato.getAutonomia() + "')";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaCandidato del BDController" + e.getMessage());
		}
	}
	
	public void bajaCandidato (int codigo) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "delete from candidatos where cod_candidato="+codigo;
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en bajaCandidato del BDController" + e.getMessage());
		}
	}
	// MODIFICACION DE CANDIDATOS
	
	public void modificarCandidato (Candidato candidato) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "UPDATE candidatos set nombre='" + candidato.getNombre() + "', apellidos='" + candidato.getApellidos() + "', fecha_nac='"
					+ candidato.getFecha_nac() + "', lugar_nac='" + candidato.getLugar_nac() + "', municipio='" + candidato.getMunicipio() + "', provincia='"
					+ candidato.getProvincia() + "', autonomia='" + candidato.getAutonomia() + "' where cod_candidato="+candidato.getCod_candidato();
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en modificarCandidato del BDController" + e.getMessage());
		}
	}
	
	
	// FIN MODIFICACION DE CANDIDATOS
	
	/* FIN CANDIDATOS */
	
	/* CANDIDATURAS */
	public void altaCandidatura (Candidato candidato, Campanna campanna, int cabezaLista, int posicion) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO candidaturas VALUES (" + candidato.getCod_candidato() + "," + campanna.getCod_campanna() + ", " + cabezaLista + ", "
					+ posicion + ")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaCandidatura del BDController" + e.getMessage());
		}
	}
	/* FIN CANDIDATURAS */
	
	/* NOTICIAS */
	public void altaNoticia (Noticia noticia) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO noticias VALUES ("+ noticia.getCod_noticia() + ", '" + noticia.getTitulo() + "', '" + noticia.getCuerpo() + "', " + noticia.getCod_campanna() + ")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaCandidatura del BDController" + e.getMessage());
		}
	}
	
	public int dameUltimoCodNoticia () {
		int codigo=0;
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT max(cod_noticia) from noticias");
			if (rs.first() == true) {
				codigo=rs.getInt(1)+1;
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameUltimoCodNoticia del BDController" + e.getMessage());
		}
		return codigo;
	}
	// MODIFICACION NOTICIAS 
	
	public void modificarNoticia (String titulo, String cuerpo, int codigo) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "UPDATE noticias set titulo='"+titulo+"', cuerpo='"+cuerpo+"' where cod_noticia="+codigo;
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en modificarNoticia del BDController" + e.getMessage());
		}
	}
	/* FIN NOTICIAS */
	
	/* EVENTOS */
	
	public void altaEvento (Evento evento) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO eventos VALUES ("+ evento.getCod_evento() + ", '" + evento.getDescripcion() + "', '" + evento.getUbicacion() + "', " + evento.getDia() + 
					", '" + evento.getHora() + "', '" +evento.getNombre()+ "', '" + evento.getTipo() + "', '" + evento.getMunicipio() +"', "+ evento.getCod_campanna() +")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaEventos del BDController" + e.getMessage());
		}
	}
	public int dameUltimoCodEvento () {
		int codigo=0;
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT max(cod_evento) from eventos");
			if (rs.first() == true) {
				codigo=rs.getInt(1)+1;
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameUltimoCodEvento del BDController" + e.getMessage());
		}
		return codigo;
	}
	// MODIFICACION EVENTOS
	
	public void modificarEvento (Evento evento) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "UPDATE eventos set descripcion='"+evento.getDescripcion()+"', ubicacion='"+evento.getUbicacion()+"', dia='"+evento.getDia()+"', hora='"+evento.getHora()
			+"', nombre='"+evento.getTipo()+"', municipio='"+evento.getMunicipio()+"' where cod_evento="+evento.getCod_evento();
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en modificarEvento del BDController" + e.getMessage());
		}
	}
	
	/* FIN EVENTOS */
	
	/* PUNTOS DEL PROGRAMA */
	public void altaPrograma (Programa programa) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO programa VALUES ("+ programa.getCod_punto() + ", '" + programa.getDescripcion() + "',"+ programa.getCod_campanna() +")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaPrograma del BDController" + e.getMessage());
		}
	}
	
	public int dameUltimoCodPrograma () {
		int codigo=0;
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT max(cod_punto) from programa");
			if (rs.first() == true) {
				codigo=rs.getInt(1)+1;
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameUltimoCodPrograma del BDController" + e.getMessage());
		}
		return codigo;
	}
	
	/* FIN PUNTOS DEL PROGRAMA */
	
	/* VOLUNTARIOS, VOLUNTARIADOS Y ASISTENTES */
	
	public void altaVoluntario (Voluntario voluntario) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO voluntarios VALUES ("+ voluntario.getCod_voluntario() + ", '" + voluntario.getNombre() + "', '"+ voluntario.getApellidos() +"', '"+voluntario.getFecha_nac()+
					"', '"+ voluntario.getEmail() +"', '"+voluntario.getTelefono()+"', "+ voluntario.getAutoriza_com() +", "+voluntario.getAutoriza_gdpd()+")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaVoluntario del BDController" + e.getMessage());
		}
	}
	
	public int dameUltimoCodVoluntario () {
		int codigo=0;
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT max(cod_voluntario) from voluntarios");
			if (rs.first() == true) {
				codigo=rs.getInt(1)+1;
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameUltimoCodVoluntarios del BDController" + e.getMessage());
		}
		return codigo;
	}
	
	public void altaVoluntariado (Voluntariado voluntariado) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO voluntariados VALUES ("+ voluntariado.getCod_voluntario() + ", " + voluntariado.getCod_campanna() + ")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaVoluntariado del BDController" + e.getMessage());
		}
	}
	
	public void altaAsistente (Asistente asistente) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO asistentes VALUES ("+ asistente.getCod_voluntario() + ", " + asistente.getCod_evento() + ")";
			miStatement.executeUpdate(sql);
			// esto se cierra para dejar de consumir memoria
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en altaAsistente del BDController" + e.getMessage());
		}
	}
	/* FIN VOLUNTARIOS, VOLUNTARIADOS Y ASISTENTES */
}
