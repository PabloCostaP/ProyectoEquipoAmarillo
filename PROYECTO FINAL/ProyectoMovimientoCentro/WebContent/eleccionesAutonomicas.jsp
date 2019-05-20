<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Elecciones Autonomicas</title>

	<!-- CSS aÃ±adido por Naggy para el modal y el acordeon -->
	<link rel="stylesheet" type="text/css" href="css/paginaEleccionesEstilo.css">
	<link rel="stylesheet" type="text/css" href="proyecto.css">
	<!-- CSS aÃ±adido por Naggy para el modal y el acordeon -->


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<meta charset="utf-8">

</head>
<body onload="">

<!-- Logo -->
	<div class="container">
		<div class="row logo">
			<div class="col-8"><img src="imagenes/logo/logo.png"></div>
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
	  			<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a>
				<a href="eleccionesAutonomicas.jsp">Elecciones Autonómicas</a>
				<a href="eleccionesMunicipales.jsp">Elecciones Municipales</a>
				<a href="eleccionesEuropeas.jsp">Elecciones Europeas</a>
	      	</div>
	      </li>
	      <li><a href="eventos.jsp">PROXIMOS EVENTOS</a></li>
	      <li><a href="participa.jsp">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->



<h2 class="titulos" style="text-align: center;">Elecciones Autonomicas</h2>	


<!-- Miembros -->
<% 
BDController controladorBD = new BDController();
/*ARRAYLIST */
//Solo es necesatio cambiar los candidatos por dameCandidatos por ambito
ArrayList<Candidato> candidatos = controladorBD.dameCandidatos();
ArrayList<Candidatura> candidaturas= controladorBD.dameCandidaturas();

ArrayList<Campanna> campannas = controladorBD.dameCampannas_autonomicas();

%>
						
	 <div class="dropdown">
 			 <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   			 Selecciona el Ambito
 			 </button>
 		 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
 		 <% for (int i =0;i<campannas.size();i++){%>
  			  <a class="dropdown-item" href="ambito.jsp?codCampanna=<%=campannas.get(i).getCod_campanna()%>"><%=campannas.get(i).getAmbito()%></a>
  			  <%}; %>
 		 </div>
	</div>
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
		<script src="js/proyecto.js"></script>
		<script src="js/modal.js"></script>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
			integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
			integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
			crossorigin="anonymous"></script>
</body>
</html>