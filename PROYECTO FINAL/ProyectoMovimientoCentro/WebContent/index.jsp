<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		
	</style>
<body>

<% 
BDController controladorBD = new BDController();
/*ARRAYLIST */
//Solo es necesatio cambiar los candidatos por dameCandidatos por ambito
ArrayList<Noticia> noticias = new ArrayList <Noticia>();
noticias = controladorBD.dame4UltimasNoticiasEuropeas();

ArrayList<Evento> eventos = new ArrayList <Evento>();
eventos = controladorBD.dame5UltimosEventos();




%>


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
							href="eleccionesAutonomicas.jsp">Elecciones AutonÃ³micas</a> <a
							href="eleccionesMunicipales.jsp">Elecciones Municipales</a> <a
							href="eleccionesEuropeas.jsp">Elecciones Europeas</a>
					</div></li>
				<li><a href="eventos.jsp">PROXIMOS EVENTOS</a></li>
				<li><a href="participa.jsp">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->

	<!-- Carrusel -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	  </ol>
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner">
	    <div class="item active">
	      <img src="imagenes/fest1.jpg">
	    </div>
	    <div class="item">
	      <img src="imagenes/fest1.jpg">
	    </div>
	    <div class="item">
	      <img src="imagenes/fest1.jpg">
	    </div>
	  </div>
	  <!-- Left and right controls -->
	  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#myCarousel" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	<!-- Fin Carrusel -->
	<div class="container participa">
		<img src="imagenes/participa.png">
	</div>
	<!-- Noticias y eventos -->
	<div clas="container">
		<div class="row">

			<div class="col-6">
				<div class="col-4"></div>
			</div>
		</div>
		<div class="row">
		
			<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 noticias">
				<h2 class="titulos" style="text-align: center;">Últimas noticias</h2>
				<div class="row">
					<div class="col-6 col-sm-6 col-lg-12 col-md-6 col-xl-12">
					
					<% for (int i =0; i<noticias.size();i++){%>
					
						<div class="col-lg-6 col-sm-12 col-md-12 col-xl-12">
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/noticias/<%=noticias.get(i).getCod_noticia()%>.jpg"></div>
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><h3><%=noticias.get(i).getTitulo()%></h3></div>
							<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-md-12 col-xl-12"><p><%=noticias.get(i).getCuerpo()%></p></div>
						</div>
				
						
					<%}; %>
					
					
					</div>
					<div class="col-6 col-sm-6 col-lg-12 col-md-6 col-xl-12">
						
					</div>
				</div>
			</div>
				
			<!-- eventos  -->
			<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 eventos">
				<h2 class="titulos">Próximos eventos</h2>
				<div class="row">
				
				
				<%for (int i =0; i<eventos.size();i++){ %>
					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/<%=eventos.get(i).getCod_evento()%>.jpg"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4><%=eventos.get(i).getNombre()%></h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p><%=eventos.get(i).getDescripcion() %></p></div>
								</div>
							</div>
						</div>
					</div>
					
					
					<%}; %>
					

					

				</div>
			</div>
		</div>
	</div>
	<!-- Fin Noticias y eventos -->
	
	<hr style="width: 70%;">
	<h1 style="color: #212121; text-align: center; font-size: 350%; margin-top: 3%;"><b>"ESLOGAN"</b></h1>
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
</body>
</html>