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
	
	public ArrayList<Candidatura> dameCandidaturas() {
		ArrayList<Candidatura> candidaturas = new ArrayList<Candidatura>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from candidaturas");
			while (rs.next() == true) {
				candidaturas.add(new Candidatura(rs.getInt(1), rs.getInt(2), rs.getBoolean(3), rs.getInt(4)));
			}
			miStatement.close();
			rs.close();

		} catch (SQLException e) {
			System.out.println("Error en dameCandidaturas del BDController" + e.getMessage());
		}
		return candidaturas;
	}
	
	public ArrayList<Evento> dameEventos() {
		ArrayList<Evento> eventos = new ArrayList<Evento>();
		try {
			Statement miStatement = this.miConexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select* from eventos");
			while (rs.next() == true) {
				eventos.add(new Evento(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8)));
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
			ResultSet rs = miStatement.executeQuery("select* from programas");
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
				voluntarios.add(new Voluntario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
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
	public void altaNoticia (Noticia noticia, String titulo, String cuerpo, Campanna campanna) {
		try {
			Statement miStatement = this.miConexion.createStatement();
			String sql = "INSERT INTO noticias VALUES ("+ noticia.getCod_noticia() + ", '" + titulo + "', '" + cuerpo + "', " + campanna.getCod_campanna() + ")";
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
	/* FIN NOTICIAS */
	
}
