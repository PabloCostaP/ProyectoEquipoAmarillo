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
	      	<a href="#">ELECCIONES</a>
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
	
	if(tipo.equalsIgnoreCase("nacionales")) { %>
	<div class="container" id="datosPersonales">
   			<div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=nacionales" method="post">
		                  <fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control" pattern="([A-Z]{1}[a-z]{2,})" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                                <input id="apellidos" name="apellidos" type="text" placeholder="Apellidos" class="form-control" pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})" required>
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
		                                <input id="email" name="email" type="email" placeholder="Email" class="form-control" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,3}" required>
		                            </div>
		                        </div>

		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="telefono" name="telefono" type="tel" placeholder="Telefono" class="form-control" pattern="[0-9]{9}" required>
		                            </div>
		                        </div>
		                       <div class="form-group">
		                            <div class="col-md-9">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style="color:black;">Autorización a recibir comunicaciones.</label>
		                            </div>
		                             <div class="col-md-12">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style=" color:black"> Autorización a que los datos sean tratados según la GDPD </label>
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
		<%} else if(tipo.equalsIgnoreCase("municipales")) {
		ArrayList<Campanna> campannas = bdController.dameCampannas_municipales();%>
		<div class="container" id="datosPersonales">
   			<div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=municipales" method="post">
		                   <fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
		                         <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                             	<select name="Ambito" style="background: #FFC107 ;cursor: pointer;width: 340px;font-size: 20px;font-weight: 300;line-height: 40px; margin-top: 2%;">
											<option disabled selected>Selecciona una opción</option>
											<%for (int i=0;i<campannas.size();i++){%>
												<option value="<%=campannas.get(i).getCod_campanna()%>"><%=campannas.get(i).getAmbito()%></option>
											<%} %>
										</select>
		                            </div>
		                           
		                        </div>
		                      <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control" pattern="([A-Z]{1}[a-z]{2,})" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                                <input id="apellidos" name="apellidos" type="text" placeholder="Apellidos" class="form-control" pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})" required>
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
		                                <input id="email" name="email" type="email" placeholder="Email" class="form-control" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,3}" required>
		                            </div>
		                        </div>

		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="telefono" name="telefono" type="tel" placeholder="Telefono" class="form-control" pattern="[0-9]{9}" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <div class="col-md-9">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style="color:black;">Autorización a recibir comunicaciones.</label>
		                            </div>
		                             <div class="col-md-12">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style=" color:black"> Autorización a que los datos sean tratados según la GDPD </label>
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
		<%}else if(tipo.equalsIgnoreCase("autonomicas")) {
		ArrayList<Campanna> campannas = bdController.dameCampannas_autonomicas();%>
		<div class="container" id="datosPersonales">
			<div class="row">
	        <div class="col-md-12">
	            <div class="well well-sm">
	                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=autonomicas" method="post">
	                   <fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                             	<select name="Ambito" style="background: #FFC107 ;cursor: pointer;width: 340px;font-size: 20px;font-weight: 300;line-height: 40px; margin-top: 2%;">
											<option disabled selected>Selecciona una opción</option>
											<%for (int i=0;i<campannas.size();i++){%>
												<option value="<%=campannas.get(i).getCod_campanna()%>"><%=campannas.get(i).getAmbito()%></option>
											<%} %>
										</select>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control" pattern="([A-Z]{1}[a-z]{2,})" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                                <input id="apellidos" name="apellidos" type="text" placeholder="Apellidos" class="form-control" pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})" required>
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
		                                <input id="email" name="email" type="email" placeholder="Email" class="form-control" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,3}" required>
		                            </div>
		                        </div>
								<div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="telefono" name="telefono" type="tel" placeholder="Telefono" class="form-control" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <div class="col-md-9">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style="color:black;">Autorización a recibir comunicaciones.</label>
		                            </div>
		                             <div class="col-md-12">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style=" color:black"> Autorización a que los datos sean tratados según la GDPD </label>
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
		<div class="container" id="datosPersonales">
			<div class="row">
	        <div class="col-md-12">
	            <div class="well well-sm">
	                <form class="form-horizontal" action="operacionesFormulario.jsp?tipo=europeas" method="post">
	                    <fieldset>
	                       <fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
		                       <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control" pattern="([A-Z]{1}[a-z]{2,})" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"></span>
		                            <div class="col-md-8">
		                                <input id="apellidos" name="apellidos" type="text" placeholder="Apellidos" class="form-control" pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})" required>
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
		                                <input id="email" name="email" type="email" placeholder="Email" class="form-control" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,3}" required>
		                            </div>
		                        </div>
								<div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="telefono" name="telefono" type="tel" placeholder="Telefono" class="form-control" required>
		                            </div>
		                        </div>
		                      <div class="form-group">
		                            <div class="col-md-9">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style="color:black;">Autorización a recibir comunicaciones.</label>
		                            </div>
		                             <div class="col-md-12">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style=" color:black"> Autorización a que los datos sean tratados según la GDPD </label>
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
	<%} else if(tipo.equalsIgnoreCase("evento")) {
		String cod_evento= request.getParameter("cod_evento");%>
		<div class="container" id="datosPersonales">
			<div class="row">
	   			<div class="col-md-12">
	        		<div class="well well-sm">
	            		<form class="form-horizontal" action="operacionesFormulario.jsp?tipo=evento" method="post">
	                		<fieldset>
		                        <legend class="text-center header">Datos Personales</legend>
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
		                                <input id="telefono" name="telefono" type="tel" placeholder="Telefono" class="form-control" required>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <div class="col-md-9">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style="color:black;">Autorización a recibir comunicaciones.</label>
		                            </div>
		                             <div class="col-md-12">
		                                <input type="checkbox" required name="lista" id="box"><label for="box" style=" color:black"> Autorización a que los datos sean tratados según la GDPD </label>
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
	<%}%>
	</div>
</body>
</html>