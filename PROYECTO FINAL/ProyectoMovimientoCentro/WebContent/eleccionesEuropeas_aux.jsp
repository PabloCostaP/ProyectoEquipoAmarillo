<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Elecciones Europeas</title>

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
<body onload="botonCandidato();">

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
	      <li><a href="index.html"><b>INICIO</b></a></li>
	      <li class="dropdown">
	      	<a href="entradas.html">ELECCIONES</a>
	      	<div class="dropdown-content">
	  			<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a>
				<a href="eleccionesAutonomicas.jsp">Elecciones AutonÃ³micas</a>
				<a href="eleccionesMunicipales.jsp">Elecciones Municipales</a>
				<a href="eleccionesEuropeas.jsp">Elecciones Europeas</a>>
	      	</div>
	      </li>
	      <li><a href="artistas.html">PROXIMOS EVENTOS</a></li>
	      <li><a href="recinto.html">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->



<h2 class="titulos" style="text-align: center;">Elecciones Europeas</h2>	

<!-- MIEMPROS Y PUNTOS -->
	<div class="container">
		<div class="row">

	<!--REPETIR EN BUCLE CON TODOS LOS MIEMBROS -->
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Miembros</h2>	

<!-- Miembros -->
<% 
BDController controladorBD = new BDController();

ArrayList<Candidato> candidatos = controladorBD.dameCandidatos();
for(int i=0; i < candidatos.size() ;i++){

%>

		
	
	<a href="eleccionesEuropeas_aux.jsp?codMiembro=<%=candidatos.get(i).getCod_candidato()%>">
				<div style="with:40%; margin-top: 30px;" class="container">
  					<div>
	  					<div id="boton"  class="accordion" >
	  						<div class= "row">
	  							<div class= "col-6">
	  								<img id="imagenMiembro" src="imagenes/candidatos/<%=candidatos.get(i).getCod_candidato()%>.jpg" style="height: 100px; width:150px;">
	  							</div>
	  							<div class="col-6" style="margin-top: 15px;">
	  								<p style="text-align: center;"><%=candidatos.get(i).getNombre() %></p>
	  								<p style="text-align: center;"><%=candidatos.get(i).getApellidos() %></p>
	  							</div>
	  							
	  						</div>
	  				    </div>
					</div>
				</div>
			<!--REPETIR EN BUCLE CON TODOS LOS MIEMBROS -->


		 </a>
<% }%>

				

	<%
	String codigoMiembro=request.getParameter("codMiembro");
		
		int cod_miembro= Integer.parseInt(codigoMiembro);
		ArrayList<Candidato> candidatos_aux = controladorBD.dameCandidatos();
		
		Candidato candidatoActual = new Candidato();
		
		for(int j=0; j < candidatos_aux.size() ;j++){
			
			if(candidatos_aux.get(j).getCod_candidato() == cod_miembro){
				candidatoActual=candidatos_aux.get(j);
			}
		}
		
		
%>		

<!-- modal info miembro -->
					<!-- CAMBIAR INFORMACION DE LOS CAMPOS -->
					<div id="fondoModal" class="modal">
						<div class="contenidoModal">
							<span class="botonCerrar">X</span>

								<div style="float: left; height: 100%; width: 40%">
									<img id="imagenMiembro" src="imagenes/candidatos/<%=candidatoActual.getCod_candidato()%>.jpg" style="height: 100%; width:70%">
								</div>

								<div style="float: right; margin-right: 10%; height: 50%; width: 50%">
									<p class="textoMiembro" style="font-size: 30px">Nombre: <%=candidatoActual.getNombre() %></p>
									<p class="textoMiembro" style=" font-size: 25px">Apellidos: <%=candidatoActual.getApellidos() %></p>
									<p class="textoMiembro">Fecha de nacimiento: <%=candidatoActual.getFecha_nac() %></p>
									<p class="textoMiembro">Lugar de nacimiento: <%=candidatoActual.getLugar_nac() %></p>
									<p class="textoMiembro" id="Campania" ">CampaÃ±a: tipoDeCampaÃ±a</p>
									<p class="textoMiembro" id="Campania" ">Introducir ambito</p>

									<p style="color: black;">posicion de lista: 1</p>
									<p style="color: black; display: none;">cabeza de lista</p>
								</div>
						</div>
					</div>
					<!-- CAMBIAR INFORMACION DE LOS CAMPOS -->
					
			</div>
<!-- modal info miembro -->
<!-- Miembros -->



<!-- Puntos del programa -->
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Puntos del Programa</h2>


				<!-- Repetir --> 
<%ArrayList<Programa> programas = controladorBD.dameProgramas();
for(int i=0;i<programas.size();i++){
%>
				<div class="container">
 					<h2>Puntos del programa</h2>
  					<div>
	  					<button class="accordion"><%=programas.get(i).getDescripcion()%></button>
						<div class="panel">						
	  						<h4><%=programas.get(i).getDescripcion()%></h4>
						</div>
					</div>
				</div>	
<%}; %>
<!-- Repetir --> 

			</div>
<!-- Puntos del programa -->

		</div>
	</div>
<!-- MIEMPROS Y PUNTOS -->







<script src="js/proyecto.js"></script>
<script src="js/modal.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>