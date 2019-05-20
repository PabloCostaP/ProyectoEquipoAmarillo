<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Elecciones Nacionales plantilla</title>

<!-- CSS aÃ±adido por Naggy para el modal y el acordeon -->
<link rel="stylesheet" type="text/css"
	href="css/paginaEleccionesEstilo.css">
<link rel="stylesheet" type="text/css" href="proyecto.css">
<!-- CSS aÃ±adido por Naggy para el modal y el acordeon -->


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<meta charset="utf-8">

</head>
<body onload="">

	<!-- Logo -->
	<div class="container">
		<div class="row logo">
			<div class="col-2">
				<img src="imagenes/logo/logo.png">
			</div>
		</div>
	</div>
	<!-- Fin Logo -->
	<!-- Navegador -->
	<nav class="navbar">
		<div class="container-fluid" id="navegador">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp"><b>INICIO</b></a></li>
				<li class="dropdown"><a href="entradas.html">ELECCIONES</a>
					<div class="dropdown-content">
						<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a> <a
							href="eleccionesAutonomicas.jsp">Elecciones Autonómicas</a> <a
							href="eleccionesMunicipales.jsp">Elecciones Municipales</a> <a
							href="eleccionesEuropeas.jsp">Elecciones Europeas</a>>
					</div></li>
				<li><a href="artistas.html">PROXIMOS EVENTOS</a></li>
				<li><a href="participa.jsp">PARTICIPA</a></li>
			</ul>
		</div>
	</nav>
	<!-- Fin Navegador -->
	<h2 class="titulos" style="text-align: center;">EleccionesNacionales</h2>
	<div class="container">
		<div class="row">
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Miembros</h2>
				<div style="with: 40%;" class="container">
					<!-- MIEMEBROS   -->
					<% 
BDController controladorBD = new BDController();
/*ARRAYLIST */
ArrayList<Candidato> candidatos = controladorBD.dameCandidatos_eleccionesNacionales();
ArrayList<Candidatura> candidaturasNacionales = controladorBD.dameCandidaturas_eleccionesNacioales();
Campanna campanaActual = controladorBD.dameCampanna_codCampanna(1);

ArrayList<Candidatura> candidaturasCabezaDeLista = controladorBD.dameCandidaturas_cabezaDeLista();

Candidato candidatoCabeza = new Candidato();

for(int i=0; i< candidatos.size();i++){
for(int j=0;j<candidaturasCabezaDeLista.size();j++) {
	if(candidaturasCabezaDeLista.get(j).getCod_candidato() == candidatos.get(i).getCod_candidato()){%>
		

		<div id="<%=i%>" onClick="botonCandidatoActual(this.id);">

						<div>
							<div id="boton" class="accordion">
								<div class="row">
									<div class="col-6">
										<img id="imagenMiembro"
											src="imagenes/candidatos/<%=candidatos.get(i).getCod_candidato()%>.jpg"
											style="height: 100px; width: 150px;">
									</div>
									<div class="col-6" style="margin-top: 15px;">
										<p style="text-align: center;"><%=candidatos.get(i).getNombre() %></p>
										<p style="text-align: center;"><%=candidatos.get(i).getApellidos() %></p>
									</div>

								</div>
							</div>
						</div>
					</div>
		
<% 
		candidatoCabeza = candidatos.get(i);
	}
}
}
/*INICIO BUCLE*/
for(int i=0; i < candidatos.size() ;i++){
	if(candidatos.get(i).getCod_candidato()==candidatoCabeza.getCod_candidato()){
		
	}else{
%>

		
					<div id="<%=i%>" onClick="botonCandidatoActual(this.id);">

						<div>
							<div id="boton" class="accordion">
								<div class="row">
									<div class="col-6">
										<img id="imagenMiembro"
											src="imagenes/candidatos/<%=candidatos.get(i).getCod_candidato()%>.jpg"
											style="height: 100px; width: 150px;">
									</div>
									<div class="col-6" style="margin-top: 15px;">
										<p style="text-align: center;"><%=candidatos.get(i).getNombre() %></p>
										<p style="text-align: center;"><%=candidatos.get(i).getApellidos() %></p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<% }}%>
				</div>
				<!-- CANDIDATOS  -->


				<%
					/*candidaturas nacionales*/
						Candidatura candidaturaActual = new Candidatura();
						
						/*Si es cabeza de lista display block para mostrarlo*/
					String display = "none";
				%>




				<!-- MODALES -->
				<div id="fondoModal" class="modal">
					<div class="contenidoModal">
						<span class="botonCerrar">X</span>
						<%
						/*BUCLE CON LOS CANDIDATOS*/
							for (int i = 0; i < candidatos.size(); i++) {
								/*BUCLE CON LAS CANDIDATURAS DE TODOS LOS CANDIDATOS*/
								for (int j = 0; j < candidaturasNacionales.size(); j++) {
									if (candidaturasNacionales.get(j).getCod_candidato() == candidatos.get(i).getCod_candidato()) {
										candidaturaActual = candidaturasNacionales.get(j);
									}
								}
								
								if (candidaturaActual.getCabeza_lista() == 1) {
									
									display = "block";
									
								} else {
									display = "none";
								}
						%>
						<div id="modalCandidatoActual<%=i%>" style="display: none"
							class="modalAcambiar">

							<div style="float: left; height: 100%; width: 40%">
								<img id="imagenMiembro"
									src="imagenes/candidatos/<%=candidatos.get(i).getCod_candidato()%>.jpg"
									style="border-radius: 53px 53px 53px 53px; -moz-border-radius: 53px 53px 53px 53px; -webkit-border-radius: 53px 53px 53px 53px; border: 0px solid #000000; height: 100%; width: 70%">
							</div>

							<div
								style="float: right; margin-right: 10%; height: 50%; width: 50%">
								<p class="textoMiembro" style="font-size: 30px">
									Nombre:
									<%=candidatos.get(i).getNombre()%></p>
								<p class="textoMiembro" style="font-size: 25px">
									Apellidos:
									<%=candidatos.get(i).getApellidos()%>
								</p>
								<p class="textoMiembro">
									Fecha de nacimiento:
									<%=candidatos.get(i).getFecha_nac()%></p>
								<p class="textoMiembro">
									Lugar de nacimiento:
									<%=candidatos.get(i).getLugar_nac()%></p>
								<p class="textoMiembro" id="Campania"">Campaña:<%=campanaActual.getTipo()%></p>
								<p class="textoMiembro" id="Campania"">Ambito: <%=campanaActual.getAmbito()%></p>

								<p style="color: black;">
									posicion de lista
									<%=candidaturaActual.getPosicion()%></p>

								<p style="color: black; display:<%=display%>;">Cabeza de
									lista</p>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<!-- modal info miembro -->
			<!-- FIN MODALES-->




<!-- PROGRAMAS -->
			<div class="col-6 ">
				<h2 class="titulos" style="text-align: center;">Puntos del
					Programa</h2>
				<div class="container">

					<!-- Repetir -->
					<%
						ArrayList<Programa> programas = controladorBD.dameProgramasEleccionesNacionales();
						for (int i = 0; i < programas.size(); i++) {
					%>
					<div>
						<button class="accordion">
							Punto:
							<%=i + 1%></button>
						<div class="panel">
							<h4><%=programas.get(i).getDescripcion()%></h4>
						</div>
					</div>
					<%
						}
						;
					%>
				</div>
			</div>
<!-- PROGRAMAS-->		
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