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
							href="eleccionesAutonomicas.jsp">Elecciones Autonómicas</a> <a
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
	String fecha = request.getParameter("nacimiento");
	String email = request.getParameter("email");
	int ambito;
	String telefono = request.getParameter("telefono");
	int cod_evento;
	final String de = "movimientocentronoreply@gmail.com";
	final String clave = "Nelson2000";
	Email emailF = new Email();
	Correo correo = new Correo();
	boolean  resultado = false;
	if(tipo.equalsIgnoreCase("nacionales")) { %>
		<div class="container" id="datosPersonales">
					<% 
					Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
					bdController.altaVoluntario(voluntario);
					Campanna campanna = bdController.dameCampanna_nacional();
					Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
					bdController.altaVoluntariado(voluntariado);
					resultado = emailF.enviarCorreo(voluntario.getEmail(), correo.correoNacionales(voluntario, campanna), campanna.getTipo());
					if(resultado) {%>
						<div class="row">
							<div class="col-md-12"><h3>El registro se ha completo correctamente</h3></div>
							<div class="col-md-12"><h3>En breves le llegará un email a <%=voluntario.getEmail() %> con los detalles</h3></div>
						</div>
					<%}else{%>
					<div class="row">
						<div class="col-md-12"><h3>Ha ocurrido un error</h3></div>
						<div class="col-md-12"><h3>Nuestros servidores estan demasiado ocupados.</h3></div>
						<div class="col-md-12"><h3>Vuelva a intentarlo en unos momentos.</h3></div>
					</div>
					<%}%>
		</div>
		<%} else if(tipo.equalsIgnoreCase("municipales")) {%>
			<div class="container">
					<% 
					ambito = Integer.parseInt(request.getParameter("ambito"));
					Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
					bdController.altaVoluntario(voluntario);
					Campanna campanna = bdController.dameCampanna_municipal_codCampanna(ambito);
					Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
					bdController.altaVoluntariado(voluntariado);
					resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoMunicipales(voluntario, campanna), campanna.getTipo());
					if(resultado) {%>
					<div class="row">
						<div class="col-md-12"><h3>El registro se ha completo correctamente</h3></div>
						<div class="col-md-12"><h3>En breves le llegará un email a <%=voluntario.getEmail() %> con los detalles</h3></div>
					</div>
					<%}else{%>
						<div class="row">
						<div class="col-md-12"><h3>Ha ocurrido un error</h3></div>
						<div class="col-md-12"><h3>Nuestros servidores estan demasiado ocupados.</h3></div>
						<div class="col-md-12"><h3>Vuelva a intentarlo en unos momentos.</h3></div>
					</div>
					<%}%>
			</div>
		<%}else if(tipo.equalsIgnoreCase("autonomicas")) {%>
			<div class="container">
				<% 
				ambito = Integer.parseInt(request.getParameter("ambito"));
				Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				bdController.altaVoluntario(voluntario);
				Campanna campanna = bdController.dameCampanna_autonomica_codCampanna(ambito);
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				bdController.altaVoluntariado(voluntariado);
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoAutonomicas(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
					<div class="row">
						<div class="col-md-12"><h3>El registro se ha completo correctamente</h3></div>
						<div class="col-md-12"><h3>En breves le llegará un email a <%=voluntario.getEmail() %> con los detalles</h3></div>
					</div>
				<%}else{%>
					<div class="row">
						<div class="col-md-12"><h3>Ha ocurrido un error</h3></div>
						<div class="col-md-12"><h3>Nuestros servidores estan demasiado ocupados.</h3></div>
						<div class="col-md-12"><h3>Vuelva a intentarlo en unos momentos.</h3></div>
					</div>
				<%}%>
			</div>
		<%} else if(tipo.equalsIgnoreCase("europeas")) {%>
			<div class="container">
				<% Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				bdController.altaVoluntario(voluntario);
				Campanna campanna = bdController.dameCampanna_europea();
				Voluntariado voluntariado = new Voluntariado(voluntario.getCod_voluntario(), campanna.getCod_campanna());
				bdController.altaVoluntariado(voluntariado);
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoEuropeas(voluntario, campanna), campanna.getTipo());
				if(resultado) {%>
					<div class="row">
						<div class="col-md-12"><h3>El registro se ha completo correctamente</h3></div>
						<div class="col-md-12"><h3>En breves le llegará un email a <%=voluntario.getEmail() %> con los detalles</h3></div>
					</div>
				<%}else{%>
					<div class="row">
						<div class="col-md-12"><h3>Ha ocurrido un error</h3></div>
						<div class="col-md-12"><h3>Nuestros servidores estan demasiado ocupados.</h3></div>
						<div class="col-md-12"><h3>Vuelva a intentarlo en unos momentos.</h3></div>
					</div>
				<%}%>
			</div>
		<%} else if(tipo.equalsIgnoreCase("evento")) {
			;%>
			<div class="container">
				<%cod_evento = Integer.parseInt(request.getParameter("evento")); 
				Voluntario voluntario = new Voluntario(bdController.dameUltimoCodVoluntario(), nombre, apellidos, fecha, email, telefono, 1, 1);
				bdController.altaVoluntario(voluntario);
				Evento evento = bdController.dameEvento(cod_evento);
				Asistente asistente = new Asistente(voluntario.getCod_voluntario(), evento.getCod_evento());
				bdController.altaAsistente(asistente);
				resultado= emailF.enviarCorreo(voluntario.getEmail(), correo.correoEvento(voluntario, evento), evento.getNombre());
				if(resultado) {%>
				<div class="row">
					<div class="col-md-12"><h3>El registro se ha completo correctamente</h3></div>
					<div class="col-md-12"><h3>En breves le llegará un email a <%=voluntario.getEmail() %> con los detalles</h3></div>
				</div>
				<%}else{%>
					<div class="row">
						<div class="col-md-12"><h3>Ha ocurrido un error</h3></div>
						<div class="col-md-12"><h3>Nuestros servidores estan demasiado ocupados.</h3></div>
						<div class="col-md-12"><h3>Vuelva a intentarlo en unos momentos.</h3></div>
					</div>
				<%}%>
			</div>
		<%} %>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/dropdown.js"></script>
</body>
</html>