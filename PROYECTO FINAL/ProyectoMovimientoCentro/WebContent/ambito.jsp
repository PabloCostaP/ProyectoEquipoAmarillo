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



<%
BDController controladorBD = new BDController();
//SOLO CAMPAÑAS AUTONOMICAS
Campanna campanna = new Campanna();
ArrayList<Campanna> campannas = new ArrayList<Campanna>();
//

String codCampanna=request.getParameter("codCampanna");
int cod_campanna = Integer.parseInt(codCampanna);
//CAMPAÑA ACTUAL SELECCIONADA ENE L DROPDOWN
campanna = controladorBD.dameCampanna_codCampanna(cod_campanna);
if(campanna.getTipo().equalsIgnoreCase("Autonómica")){
	campanna = controladorBD.dameCampanna_autonomica_codCampanna(cod_campanna);
	campannas= controladorBD.dameCampannas_autonomicas();
	
}
if(campanna.getTipo().equalsIgnoreCase("Municipal")){
	campanna = controladorBD.dameCampanna_municipal_codCampanna(cod_campanna);
	campannas= controladorBD.dameCampannas_municipales();
}


//NECESITO  LOS CANDIDATOS 
ArrayList<Candidato> candidatos = controladorBD.dameCandidatos_elecciones_codCampanna(cod_campanna);
//NECESITO  LOS PROGRAMAS 
ArrayList<Programa> programas = controladorBD.dameProgramasEleccionesCodCampanna(cod_campanna);
//NECESITO LAS CANDIDATURAS PARA BUSCAR LA SELECCIONADA E INTROODUCIRLA EN CANDIDATURA ACTUAL ETC
ArrayList<Candidatura> candidaturasAmbito = controladorBD.dameCandidaturas();

%>
<h2 class="titulos" style="text-align: center;"><%=campanna.getAmbito() %></h2>

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
	
<!-- MIEMPROS Y PUNTOS -->
	<div class="container">
		<div class="row">

	
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Miembros</h2>	
				<div style="with:40%;" class="container">

<!-- Miembros -->
<% 


/*ARRAYLIST */







for(int i=0; i < candidatos.size() ;i++){

%>

	
	<!--REPETIR EN BUCLE CON TODOS LOS MIEMBROS -->
	<div id="<%=i%>"  onClick= "botonCandidatoActual(this.id);">

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
				
			<!--REPETIR EN BUCLE CON TODOS LOS MIEMBROS -->


		 </div>
<% }%>

</div>


<!--  -->
	

	<%
		/*candidatura actual*/
		Candidatura candidaturaActual = new Candidatura();	
		
		
		/*Si es cabeza de lista display block para mostrarlo*/
			String display = "none";	
%>		




<!-- modal info miembro -->
					<!-- CAMBIAR INFORMACION DE LOS CAMPOS -->
					<div id="fondoModal" class="modal">
						<div class="contenidoModal">						
							<span class="botonCerrar">X</span>								
							<%for(int i=0;i<candidatos.size();i++){ 
								
								for(int j=0; j<candidaturasAmbito.size();j++){
									if(candidaturasAmbito.get(j).getCod_candidato() == candidatos.get(i).getCod_candidato()){
										candidaturaActual = candidaturasAmbito.get(j);
									}
								}
								
								Campanna campannaActual = controladorBD.dameCampanna_codCampanna(candidaturaActual.getCod_campanna());
								
								if(candidaturaActual.getCabeza_lista() == 1){
									 display = "block";
								}else{
									display="none";
								}
								
							%>
							
							
							<div id="modalCandidatoActual<%=i%>" style="display: none" class="modalAcambiar">
								<div style="float: left; height: 100%; width: 40%">
									<img id="imagenMiembro" src="imagenes/candidatos/<%=candidatos.get(i).getCod_candidato()%>.jpg" style="height: 100%; width:70%">
								</div>

								<div style="float: right; margin-right: 10%; height: 50%; width: 50%">
									<p class="textoMiembro" style="font-size: 30px">Nombre: <%=candidatos.get(i).getNombre()%></p>
									<p class="textoMiembro" style=" font-size: 25px">Apellidos: <%=candidatos.get(i).getNombre()%> </p>
									<p class="textoMiembro">Fecha de nacimiento:  <%=candidatos.get(i).getNombre()%></p>
									<p class="textoMiembro">Lugar de nacimiento:  <%=candidatos.get(i).getNombre()%></p>
									<p class="textoMiembro" id="Campania" "><%=campannaActual.getTipo()%></p>
									<p class="textoMiembro" id="Campania" ">Ambito:<%=campannaActual.getAmbito()%></p>

									<p style="color: black;">posicion de lista <%=candidaturaActual.getPosicion()%></p>
									
									<p style="color: black; display:<%=display%>;">Cabeza de lista</p>
								</div>
							</div>
							<%} %>
						</div>
					</div>
					<!-- CAMBIAR INFORMACION DE LOS CAMPOS -->
					
			</div>
<!-- modal info miembro -->
<!-- Miembros -->

<!-- Puntos del programa -->
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Puntos del Programa</h2>
				<div class="container">
<!-- Repetir --> 
<%
for(int i=0;i<programas.size();i++){
%>
				
  					<div>
	  					<button class="accordion"> Punto: <%=i+1%></button>
						<div class="panel">						
	  						<h4><%=programas.get(i).getDescripcion()%></h4>
						</div>
					</div>
			
<%}; 
%>
<!-- Repetir --> 
			</div>	
			</div>
<!-- Puntos del programa -->
		</div>
	</div>
<!-- FIN -->



	


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