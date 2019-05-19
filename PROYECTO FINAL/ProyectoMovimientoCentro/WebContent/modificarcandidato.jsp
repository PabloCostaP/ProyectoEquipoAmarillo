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
ArrayList<Candidato> candidatos = controladorBD.dameCandidatos();

%>
	<div class="container">
		<h2>Administración de MovimientoCentro</h2>
	</div>
	<ul>
		<li><a href="altacandidato.jsp">Alta</a></li>
		<li><a href="bajacandidato.jsp">Baja</a></li>
		<li><a href="modificarcandidato.jsp">Modificacion</a></li>
	</ul>
	<h3 style="text-align:center; margin-top: 2%; margin-bottom: 2%;">Modificar Candidato</h3>
	<div class="container">
	<hr>
		<form action="operaciones.jsp?tipo=modificarcandidatoF" method="post">
			<select name="candidato" style="background: #FFC107 ;cursor: pointer;width: 400px;font-size: 20px;font-weight: 300;line-height: 40px;height:53px; margin-top: 2%; color:white;">
				<option disabled selected>Selecciona un candidato</option>
				<%for (int i=0;i<candidatos.size();i++){%>
					<option value="<%=candidatos.get(i).getCod_candidato()%>" style="color: white;"><%=candidatos.get(i).getNombre()%> <%=candidatos.get(i).getApellidos()%></option>
				<%} %>
			</select>
			<br>
			<input type="submit" value="Siguiente" id="boton" style="margin-top: 2.5%; padding:10px; background-color: #303F9F; color: white;">
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/dropdown.js"></script>
</body>
</html>