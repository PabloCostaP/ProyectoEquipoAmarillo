<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	      <li><a href="index.html"><b>INICIO</b></a></li>
	      <li class="dropdown">
	      	<a href="entradas.html">ELECCIONES</a>
	      	<div class="dropdown-content">
	  			<a href="eleccionesNacionales.jsp">Elecciones Nacionales</a> <a
							href="eleccionesAutonomicas.jsp">Elecciones AutonÃ³micas</a> <a
							href="eleccionesMunicipales.jsp">Elecciones Municipales</a> <a
							href="eleccionesEuropeas.jsp">Elecciones Europeas</a>>
					</div></li>
				<li><a href="artistas.html">PROXIMOS EVENTOS</a></li>
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
						<div class="col-lg-6 col-sm-12 col-md-12 col-xl-12">
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3></div>
							<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
						</div>
						<div class="col-lg-6 col-sm-12 col-md-12 col-xl-12">
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3></div>
							<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
						</div>
					</div>
					<div class="col-6 col-sm-6 col-lg-12 col-md-6 col-xl-12">
						<div class="col-lg-6 col-sm-12 col-md-12 col-xl-12">
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3></div>
							<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
						</div>
						<div class="col-lg-6 col-sm-12 col-md-12 col-xl-12">
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							<div class="col-lg-12 col-sm-12 col-md-12 col-xl-12"><h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3></div>
							<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 eventos">
				<h2 class="titulos">Próximos eventos</h2>
				<div class="row">
					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-12 col-sm-12 col-lg-12 col-xl-12">
						<div class="row">
							<div class="col-6 col-sm-6 col-lg-4 col-xl-4">
								<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><img src="imagenes/eventos/evento.png"></div>
							</div>
							<div class="col-6 col-sm-6 col-lg-8 col-xl-8">
								<div class="row">
									<div class="col-12 col-lg-12 col-sm-12 col-md-12 col-xl-12"><h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4></div>
									<div class="d-lg-inline d-md-inline d-xl-inline d-none col-lg-12 col-sm-12 col-md-12 col-xl-12"><p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p></div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Fin Noticias y eventos -->
	<hr style="width: 70%;">
	<h1 style="color: #212121; text-align: center; font-size: 350%; margin-top: 3%;"><b>"ESLOGAN"</b></h1>
<!-- FOOTER -->
<footer>
	
		<!-- Icons -->
			<ul class="icons">
				<li><a href="#" ><i class="fa fa-twitter"></i><span class="label">Twitter</span></a></li>
				<li><a href="#" ><i class="fa fa-facebook"></i><span class="label">Facebook</span></a></li>
				<li><a href="#" ><i class="fa fa-github"></i><span class="label">GitHub</span></a></li>
				<li><a href="#" ><i class="fa fa-linkedin"></i><span class="label">LinkedIn</span></a></li>
				<li><a href="#" ><i class="fa fa-google-plus"></i><span class="label">Google+</span></a></li>
			</ul>
		<!-- Copyright -->
			<div class="copyright">
				<ul class="menu">
					<li>&copy; Movimiento Centro. Todos los derechos reservados</li><li>Design: Equipo Amarillo</li>
				</ul>
			</div>
	
	</footer>
<!-- FIN FOOTER -->
</body>
</html>