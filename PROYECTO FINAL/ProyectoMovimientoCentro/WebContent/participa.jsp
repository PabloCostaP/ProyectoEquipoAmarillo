<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
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
	
	<%
	BDController bdController = new BDController();
	ArrayList<Evento> eventos = bdController.dameEventos();
	
	%>

	<div class="container" id="formContainer">
		<div class="container" id="container1">
			<div class="row">
				<div class="col-sm-2"></div>
		        <div class="col-sm-8 opcion" value="voluntario">
		          <h5>Quiero ser voluntario</h5>
		        </div>
		        <div class="col-sm-2"></div>
		    </div>
		    <div class="row">
		      	<div class="col-sm-2"></div>
		        <div class="col-sm-8 opcion" value="asistente">
		          <h5>Asistir a un evento</h5>
		        </div>
		        <div class="col-sm-2"></div>
			</div>
			<button id="boton1" class="boton btn btn-primary">Siguiente</button>
		</div>
		<div class="container" id="containerVoluntarios1" style="display:none">
			<div class="row">
				<div class="col-sm-2"></div>
		        <a class="col-sm-8" href="formularioEmail.jsp?tipo=nacionales"><div class="opcion"  value="nacionales">
		          <h5>Elecciones Nacionales</h5>
		        </div></a>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
				<div class="col-sm-2"></div>
		        <a class="col-sm-8" href="formularioEmail.jsp?tipo=autonomicas"><div class="opcion"  value="autonomica">
		           <h5>Elecciones Autonomica</h5>
		        </div></a>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
				<div class="col-sm-2"></div>
		        <a class="col-sm-8" href="formularioEmail.jsp?tipo=municipales"><div class="opcion"  value="municipales">
		          <h5>Elecciones Municipales</h5>
		        </div></a>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
		      	<div class="col-sm-2"></div>
		        <a class="col-sm-8" href="formularioEmail.jsp?tipo=europeas"><div class="opcion"  value="europeas">
		           <h5>Elecciones Europeas</h5>
		        </div></a>
		        <div class="col-sm-2"></div>
			</div>
		</div>
		<div id="containerAsistentes" style="display:none; margin-bottom:50%; color:black;">
			<%for(int i = 0; i < eventos.size(); i++) {
				if(i==eventos.size()-1) {%>
				<div class="row">
					<div class="col-md-4">
						<img src="imagenes/eventos/<%=eventos.get(i).getCod_evento() %>.PNG" style="width: 100%; float: left;">
					</div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12"><h4><%=eventos.get(i).getTipo()%></h4></div>
		        			<div class="col-md-12"><h2><%=eventos.get(i).getNombre()%></h2></div>
		        			<div class="col-md-12"><date><%=eventos.get(i).getDia()%></date></div>
		        			<div class="col-md-12"><p><%=eventos.get(i).getDescripcion()%></p></div>
		        			<div class="col-md-12"><p><%=eventos.get(i).getUbicacion()%> - <%=eventos.get(i).getMunicipio()%></p></div>
		        			<a href="formularioEmail.jsp?tipo=evento&cod_evento=<%=eventos.get(i).getCod_evento()%>" ><button class="boton btn btn-primary">Asistir</button></a>
	        			</div>
	        			
        			</div>
        		</div>
				<%}else{%>
					<div class="row">
					<div class="col-md-4">
						<img src="imagenes/eventos/<%=eventos.get(i).getCod_evento() %>.PNG" style="width: 100%; float: left;">
					</div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12"><h4><%=eventos.get(i).getTipo()%></h4></div>
		        			<div class="col-md-12"><h2><%=eventos.get(i).getNombre()%></h2></div>
		        			<div class="col-md-12"><date><%=eventos.get(i).getDia()%></date></div>
		        			<div class="col-md-12"><p><%=eventos.get(i).getDescripcion()%></p></div>
		        			<div class="col-md-12"><p><%=eventos.get(i).getUbicacion()%> - <%=eventos.get(i).getMunicipio()%></p></div>
		        			<a href="formularioEmail.jsp?tipo=evento&cod_evento=<%=eventos.get(i).getCod_evento()%>" ><button class="boton btn btn-primary">Asistir</button></a>
	        			</div>
	        			
        			</div>
        		</div>
        		<hr>
					<%}%>
				
			<%}%>
		</div>
	</div>
	<!-- Fin Formulario -->
	<!-- FOOTER -->

<!-- FIN FOOTER -->
<script src="js/formulario.js"></script>
</body>
</html>