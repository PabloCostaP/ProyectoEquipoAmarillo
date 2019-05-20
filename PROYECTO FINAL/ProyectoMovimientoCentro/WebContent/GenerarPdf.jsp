<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="movimientoCentroPackage.*"%>
<%@ page import="java.awt.Desktop"%>
<%@ page import="java.net.*"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Generar PDF</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
</head>
<body>

	<%
		BDController controladorBD = new BDController();
		String tipo = "";
		String filePath = application.getRealPath("/");
		filePath = filePath.replace("\\", "/");
		GeneratePDFFileIText generatePDFFileIText = new GeneratePDFFileIText();
		

			ArrayList<Candidato> candidatos = controladorBD.dameCandidatos();
			generatePDFFileIText.createPDFCandidatos(new File(filePath + "pdf/movimiento.pdf"), candidatos);

			Desktop d = Desktop.getDesktop();
			URI uriBase = new URI(filePath + "pdf/movimiento.pdf");
			d.browse(uriBase);

			response.sendRedirect("eleccionesNaciones.jsp");

		
	%>


	<!-- JavaScript Libraries -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/jquery/jquery-migrate.min.js"></script>
	<script src="lib/popper/popper.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/scrollreveal/scrollreveal.min.js"></script>
	<!-- Contact Form JavaScript File -->
	<script src="contactform/contactform.js"></script>

	<!-- Template Main Javascript File -->
	<script src="js/main.js"></script>
</body>
</html>

