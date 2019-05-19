<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Administración</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	<link rel="stylesheet" href="css/dropdown.css" />
	<meta charset="utf-8">
	<style>input {padding:5px;}</style>
</head>
<body>
<%
BDController controladorBD = new BDController();
ArrayList<Campanna> campannas = controladorBD.dameCampannas();

%>
	<div class="container">
		<h2>Administración de MovimientoCentro</h2>
	</div>
	<ul>
		<li><a href="altacandidato.jsp">Alta</a></li>
		<li><a href="bajacandidato.jsp">Baja</a></li>
		<li><a href="modificarcandidato.jsp">Modificacion</a></li>
	</ul>
	<h3 style="text-align:center; margin-top: 2%; margin-bottom: 2%;">Alta Candidato</h3>
	<div class="container">
	<hr>
		<form action="operaciones.jsp?tipo=altacandidato" method="post">
			<div class="row">
				<div class="col-sm-3"><input type="text" name="nombre" placeholder="Nombre" required pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="apellidos" placeholder="Apellidos" required pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="date" name="fecha_nac" style="padding-right: 21px;" required></div>
				<div class="col-sm-3"><input type="text" name="lugar_nac" placeholder="Lugar de nacimiento" required pattern="([A-Z]{1}[a-z]{2,})"></div>
			</div>
			<div class="row" style="margin-top: 2%;">
				<div class="col-sm-3"><input type="text" name="municipio" placeholder="Municipio" required pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="provincia" placeholder="Provincia" required pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="autonomia" placeholder="Autonomia" required pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="checkbox" name="lista" id="box"><label for="box" style="padding-left: 10px; font-size: 110%;">¿Cabeza de lista?</label></div>
			</div>
			<div class="row" style="margin-top: 2%;">
				<div class="col-sm-3"><input type="number" name="posicion" placeholder="Posicion en lista" required)"></div>
			</div>
				<select name="campanna" style="background: #FFC107 ;cursor: pointer;width: 400px;font-size: 20px;font-weight: 300;line-height: 40px;height:53px; margin-top: 2%; color:white;">
				<option disabled selected>Selecciona una campaña</option>
				<%for (int i=0;i<campannas.size();i++){%>
					<option value="<%=campannas.get(i).getCod_campanna()%>" style="color: white;"><%=campannas.get(i).getTipo()%> - <%=campannas.get(i).getAmbito()%></option>
				<%} %>
				</select>
				<br>
				<input type="submit" value="Dar de alta" id="boton" style="margin-top: 2.5%; padding:10px; background-color: #303F9F; color: white;">
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/dropdown.js"></script>
</body>
</html>