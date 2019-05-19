<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Partido politico</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<link rel="stylesheet" href="css/dropdown.css" />
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
	      	<a href="entradas.html">ELECCIONES</a>
	      	<div class="dropdown-content">
	  			<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a> <a
							href="eleccionesAutonomicas.jsp">Elecciones Auton�micas</a> <a
							href="eleccionesMunicipales.jsp">Elecciones Municipales</a> <a
							href="eleccionesEuropeas.jsp">Elecciones Europeas</a>>
	      	</div>
	      </li>
	      <li><a href="artistas.html">PROXIMOS EVENTOS</a></li>
	      <li><a href="participa.jsp">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->

	<!-- Formulario -->
	<div class="container" id="formContainer">
	<%
	BDController bdController = new BDController();
	ArrayList<Evento> eventos = bdController.dameEventos();
	String tipo = request.getParameter("tipo");
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String fecha = request.getParameter("fecha");
	String email = request.getParameter("email");
	String telefono = request.getParameter("telefono");
	String cod_evento= request.getParameter("cod_evento");
	final String de = "movimientocentronoreply@gmail.com";
	final String clave = "Nelson2000";
	Email emailF = new Email();
	Correo correo = new Correo();
	boolean  resultado; 
	
	if(tipo.equalsIgnoreCase("nacionales")) { %>
		<div class="container">
				<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				Campanna campanna = bdController.dameCampanna_nacional();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
				
			<%}else{
				
			}%>
		</div>
		<%} else if(tipo.equalsIgnoreCase("municipales")) {%>
			<div class="container">
					<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				Campanna campanna = bdController.dameCampanna_nacional();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
				
			<%}else{
				
			}%>
			</div>
		<%}else if(tipo.equalsIgnoreCase("autonomicas")) {%>
			<div class="container">
				<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				Campanna campanna = bdController.dameCampanna_nacional();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
				
			<%}else{
				
			}%>
			</div>
		<%} else if(tipo.equalsIgnoreCase("europeas")) {%>
			<div class="container">
				<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				Campanna campanna = bdController.dameCampanna_nacional();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
				
			<%}else{
				
			}%>
			</div>
		<%} else if(tipo.equalsIgnoreCase("eventos")) {
			;%>
			<div class="container">
				<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				Campanna campanna = bdController.dameCampanna_nacional();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
				
			<%}else{
				
			}%>
			</div>
		<%} %>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/dropdown.js"></script>
</body>
</html>