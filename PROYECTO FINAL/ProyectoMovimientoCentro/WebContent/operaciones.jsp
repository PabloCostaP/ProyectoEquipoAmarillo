<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.awt.Desktop" %>
<%@ page import="java.net.*" %> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Administración</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	<meta charset="utf-8">

</head>
<body>
<%
BDController controladorBD = new BDController();
String filePath = application.getRealPath("/");
filePath = filePath.replace("\\", "/");

%>

	<div class="container">
		<h2>Administración de MovimientoCentro</h2>
	</div>
	<ul>
		<li><a href="altacandidato.jsp">Alta</a></li>
		<li><a href="bajacandidato.jsp">Baja</a></li>
		<li><a href="modificarcandidato.jsp">Modificacion</a></li>
	</ul>
	<%
	String tipo=request.getParameter("tipo");
	
	if (tipo.equalsIgnoreCase("altacandidato")) {
		
		int cod_candidato=controladorBD.dameUltimoCodCandidato();
		String nombre=request.getParameter("nombre");
		String apellidos=request.getParameter("apellidos");
		String fecha_nac=request.getParameter("fecha_nac");
		String lugar_nac=request.getParameter("lugar_nac");
		String municipio=request.getParameter("municipio");
		String provincia=request.getParameter("provincia");
		String autonomia=request.getParameter("autonomia");
		int posicion=Integer.parseInt(request.getParameter("posicion"));
		int cod_campanna=Integer.parseInt(request.getParameter("campanna"));
		String cabeza=request.getParameter("lista");
		int cabezaLista=0;
		if (cabeza!=null) {
			cabezaLista=1;
		}
		Candidato candidatoA = new Candidato(cod_candidato, nombre, apellidos, fecha_nac, lugar_nac, municipio, provincia, autonomia);
		Candidatura candidatura = new Candidatura(candidatoA.getCod_candidato(), cod_campanna, cabezaLista, posicion);
		controladorBD.altaCandidato(candidatoA);
		controladorBD.altaCandidatura(candidatura);
		out.print("<h2><b>El candidato ha sido dado de alta correctamente.</b></h2>");
		
		%>
		
		<div class="container">
			Asigne una foto al candidato.
		
		<!--
		Este formulario solo puede contener input de tipo file, ya que el enctype es multipart/form-data
		no se puede combinar con inputs de tipo text.
		 -->
		<form action="foto.jsp?tipo=fotoCandidato" method="post" enctype="multipart/form-data">
			<input type="file" name="file" size="50" style="width:500px;"/><br/>
			<input type="submit" value="Asignar Foto" />
		</form>
		</div>
		<%
		}
	
	
	
	
	
	if (tipo.equalsIgnoreCase("bajacandidato")) {
	
	int cod_candidato=Integer.parseInt(request.getParameter("candidato"));
	controladorBD.bajaCandidato(cod_candidato);
	out.print("<h2><b>El candidato ha sido dado de baja correctamente.</b></h2>");
	}
	%>
	<%
	
	
	if (tipo.equalsIgnoreCase("modificarcandidatoF")) {
		ArrayList<Candidato> candidatos = controladorBD.dameCandidatos();
		int cod_candidato=Integer.parseInt(request.getParameter("candidato"));
		Candidato candidato=controladorBD.dameCandidato(cod_candidato);
	
	%>
	<h3 style="text-align:center; margin-top: 2%; margin-bottom: 2%;">Modificación del candidato <%=candidato.getNombre()%><span> </span><%=candidato.getApellidos()%></h3>
	<div class="container">
		<form action="operaciones.jsp?tipo=modificarcandidato" method="post">
			<div class="row">
				<div class="col-sm-3"><input type="text" name="nombreF" value="<%=candidato.getNombre()%>"  pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="apellidosF" value="<%=candidato.getApellidos()%>"  pattern="([A-Z]{1}[a-z]{2,}+[A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="date" name="fecha_nacF" style="padding-right: 21px;" value="<%=candidato.getFecha_nac()%>" ></div>
				<div class="col-sm-3"><input type="text" name="lugar_nacF" value="<%=candidato.getLugar_nac()%>"  pattern="([A-Z]{1}[a-z]{2,})"></div>
			</div>
			<div class="row" style="margin-top: 2%;">
				<div class="col-sm-3"><input type="text" name="municipioF" value="<%=candidato.getMunicipio()%>"  pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="provinciaF" value="<%=candidato.getProvincia()%>"  pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3"><input type="text" name="autonomiaF" value="<%=candidato.getAutonomia()%>"  pattern="([A-Z]{1}[a-z]{2,})"></div>
				<div class="col-sm-3" style="display:none;"><input type="text" name="codigoF" value="<%=candidato.getCod_candidato()%>"></div>
			</div>
			<br>
			<input type="submit" value="Modificar" id="boton" style="margin-top: 2.5%;margin-left:45%; padding:10px; background-color: #303F9F; color: white;">
		</form>
	</div>
		<%
	}
		%>
	<% 
	if (tipo.equalsIgnoreCase("modificarcandidato")) {
		String nombreF=request.getParameter("nombreF");
		String apellidosF=request.getParameter("apellidosF");
		String fecha_nacF=request.getParameter("fecha_nacF");
		String lugar_nacF=request.getParameter("lugar_nacF");
		String municipioF=request.getParameter("municipioF");
		String provinciaF=request.getParameter("provinciaF");
		String autonomiaF=request.getParameter("autonomiaF");
		int cod_candidato=Integer.parseInt(request.getParameter("codigoF"));
		Candidato candidatoF = new Candidato(cod_candidato,nombreF,apellidosF,fecha_nacF,lugar_nacF,municipioF,provinciaF,autonomiaF);
		controladorBD.modificarCandidato(candidatoF);
		out.print("<h2><b>El candidato ha sido modificado correctamente.</b></h2>");
	}%>
	
</body>
</html>