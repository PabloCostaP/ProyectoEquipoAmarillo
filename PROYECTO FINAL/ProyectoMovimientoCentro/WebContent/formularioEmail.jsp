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

	<div class="container" id="formContainer">
	<%
	BDController bdController = new BDController();
	ArrayList<Evento> eventos = bdController.dameEventos();
	String tipo = request.getParameter("tipo");
	%>
	
	<%if(tipo.equalsIgnoreCase("nacionales")) { %>
	<div class="container"  id="datosPersonales">
   			<div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=nacionales" method="post">
		                    <fieldset>
		                        <legend class="text-center header">Email</legend>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
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
		<%} else if(tipo.equalsIgnoreCase("municipales")) {%>
		<div class="container"  id="datosPersonales">
   			<div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=municipales" method="post">
		                    <fieldset>
		                        <legend class="text-center header">Email</legend>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
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
		<%}else if(tipo.equalsIgnoreCase("autonomicas")) {%>
		<div class="container"  id="datosPersonales">
			<div class="row">
	        <div class="col-md-12">
	            <div class="well well-sm">
	                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=autonomicas" method="post">
	                    <fieldset>
	                        <legend class="text-center header">Email</legend>
	                        <div class="form-group">
	                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"></i></span>
	                            <div class="col-md-8">
	                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
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
	<%} else if(tipo.equalsIgnoreCase("europeas")) {%>
		<div class="container"  id="datosPersonales">
			<div class="row">
	        <div class="col-md-12">
	            <div class="well well-sm">
	                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=europeas" method="post">
	                    <fieldset>
	                        <legend class="text-center header">Email</legend>
	                        <div class="form-group">
	                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"></i></span>
	                            <div class="col-md-8">
	                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
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
	<%} %>
	</div>
</body>
</html>