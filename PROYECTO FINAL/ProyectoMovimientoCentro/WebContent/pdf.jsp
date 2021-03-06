<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.awt.Desktop" %>
        <%@ page import="java.net.*" %> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Partido politico</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		
	</style>
<body>
	<!-- Logo -->
	<div class="container">
		<div class="row logo">
			<div class="col-2"><img src="imagenes/logo/logo.png"></div>
		</div>
	</div>
	<!-- Fin Logo -->
	<!-- Navegador -->
	<nav class="navbar">
	  <div class="container-fluid" id="navegador">
	    <ul class="nav navbar-nav">
	      <li><a href="index.jsp"><b>INICIO</b></a></li>
	      <li class="dropdown">
	      	<a href="#">ELECCIONES</a>
	      	<div class="dropdown-content">
	  			<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a> <a
							href="eleccionesAutonomicas.jsp">Elecciones Autonómicas</a> <a
							href="eleccionesMunicipales.jsp">Elecciones Municipales</a> <a
							href="eleccionesEuropeas.jsp">Elecciones Europeas</a>>
					</div></li>
				<li><a href="eventos.jsp">PROXIMOS EVENTOS</a></li>
				<li><a href="participa.jsp">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->

	<%
	BDController bdController = new BDController();
	GeneratePDFFileIText generatePDFFileIText = new GeneratePDFFileIText();
	ArrayList<Candidato> candidatos = bdController.dameCandidatos();
	generatePDFFileIText.createPDFCandidatos(new File("C:/Users/Sergio%20Alvarez/Desktop/proyecto/ProyectoEquipoAmarillo/PROYECTO%20FINAL/ProyectoMovimientoCentro/WebContent/pdf/candidatos.pdf"), candidatos);
	URI uriBase = new URI("C:/Users/Sergio%20Alvarez/Desktop/proyecto/ProyectoEquipoAmarillo/PROYECTO%20FINAL/ProyectoMovimientoCentro/WebContent/pdf/candidatos.pdf");
	d.browse(uriBase);
	response.sendRedirect("index.jsp");
	
	%>

	
	<!-- Fin Eventos -->
<!-- FOOTER -->
<footer>
	<div class="row">
		<!-- Icons -->
		
			<ul class="icons col-md-12">
				<li style="margin-left: 32%;"><a href="#" ><i class="fab fa-twitter"></i><span class="label">Twitter</span></a></li>
				<li><a href="#" ><i class="fab fa-facebook"></i><span class="label">Facebook</span></a></li>
				<li><a href="#" ><i class="fab fa-github"></i><span class="label">GitHub</span></a></li>
				<li><a href="#" ><i class="fab fa-linkedin"></i><span class="label">LinkedIn</span></a></li>
				<li><a href="#" ><i class="fab fa-google-plus"></i><span class="label">Google+</span></a></li>
			</ul>
		<!-- Copyright -->
			<div class="copyright col-md-12">
				<ul class="menu">
					<li>&copy; Movimiento Centro. Todos los derechos reservados</li><li>Design: Equipo Amarillo</li>
				</ul>
			</div>
	</div>
	</footer>
<!-- FIN FOOTER -->

<script src="js/formulario.js"></script>
</body>

</html>