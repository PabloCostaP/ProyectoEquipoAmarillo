<%@page import="movimientoCentroPackage.BDController"%>
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
	      <li><a href="index.html"><b>INICIO</b></a></li>
	      <li class="dropdown">
	      	<a href="entradas.html">ELECCIONES</a>
	      	<div class="dropdown-content">
	  			<a href="#">Elecciones Nacionales</a>
				<a href="#">Elecciones Autonómicas</a>
				<a href="#">Elecciones Municipales</a>
				<a href="#">Elecciones Europeas</a>
	      	</div>
	      </li>
	      <li><a href="artistas.html">PROXIMOS EVENTOS</a></li>
	      <li><a href="participa.html">PARTICIPA</a></li>
	    </ul>
	  </div>
	</nav>
	<!-- Fin Navegador -->

	<!-- Formulario -->
	
	<%
	BDController bdController = new BDController();
	String tipo="";
	String voluntario="";
	String ambito="";
	
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
		        <div class="col-sm-8 opcion"  value="nacionales">
		          <h5>Elecciones Nacionales</h5>
		        </div>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
				<div class="col-sm-2"></div>
		        <div class="col-sm-8 opcion"  value="autonomica">
		          <h5>Elecciones Autonomica</h5>
		        </div>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
				<div class="col-sm-2"></div>
		        <div class="col-sm-8 opcion"  value="municipales">
		          <h5>Elecciones Municipales</h5>
		        </div>
		        <div class="col-sm-2"></div>
		      </div>
		      <div class="row">
		      	<div class="col-sm-2"></div>
		        <div class="col-sm-8 opcion"  value="europeas">
		          <h5>Elecciones Europeas</h5>
		        </div>
		        <div class="col-sm-2"></div>
			</div>
			<button id="boton2" class="boton btn btn-primary">Siguiente</button>
		</div>
		<div class="container" id="containerNacionales" style="display:none">
			
			<button id="boton2" class="boton btn btn-primary">Siguiente</button>
		</div>

		<div class="container"  id="datosPersonales" style="display:none">
   			<div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" method="post">
		                    <fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
		                        <div class="form-group">
		                        	<h3>Selecione </h3>
		                    		<div class="col-md-12">
						    			<select class="form-control" id="select">
						      				<option>1</option>
						      				<option>2</option>
						      				<option>3</option>
						      				<option>4</option>
						      				<option>5</option>
						    			</select>
					    			</div>
  								</div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                                <input id="apellidos" name="apellidos" type="text" placeholder="Apellidos" class="form-control" required>
		                            </div>
		                        </div>
		 						<div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-calendar bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nacimiento" name="nacimiento" type="date" placeholder="Telefono" class="form-control" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
		                            </div>
		                        </div>

		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="telefono" name="telefono" type="text" placeholder="Telefono" class="form-control" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <div class="col-md-12 text-center">
		                                <button type="submit" class="btn btn-primary btn-lg">enviar</button>
		                            </div>
		                        </div>
		                    </fieldset>
		                </form>
		            </div>
		        </div>
    		</div>
		</div>
	</div>
	<!-- Fin Formulario -->
<script src="js/formulario.js"></script>
</body>
</html>