package movimientoCentroPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class BDController {

	private Connection miConexion;
	PreparedStatement consulta_dameEquipoJugador;
	
	public BDController () {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			this.miConexion = DriverManager.getConnection("jdbc:mysql://localhost/proyecto", "root", "");
			//this.miConexion = DriverManager.getConnection("jdbc:mysql://localhost/FIFA", "root", "");
			
		} catch (SQLException e) {
			System.out.println("Error en constructor BDController" + e.getMessage());
		}

	}
}
