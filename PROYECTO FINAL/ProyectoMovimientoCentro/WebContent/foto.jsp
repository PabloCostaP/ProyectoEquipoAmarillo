<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="movimientoCentroPackage.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.awt.Desktop" %>
<%@ page import="java.net.*" %> 
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
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

%>

	<div class="container">
		<h2>Administración de MovimientoCentro</h2>
	</div>
	<ul>
		<li><a href="altacandidato.jsp">Alta</a></li>
		<li><a href="bajacandidato.jsp">Baja</a></li>
		<li><a href="modificarcandidato.jsp">Modificacion</a></li>
	</ul>
	<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div id="content">

							<!-- Content -->
<%					
//FOTO JUGADOR
		
			//Creamos un objeto file para meter la foto dentro
			File file ;
			int maxFileSize = 5000 * 1024;
			int maxMemSize = 5000 * 1024;
			
			//Creamos la ruta donde tenemos la aplicación
			String filePath = application.getRealPath("/");
			filePath = filePath.replace("\\", "/");
			 
			 
			String contentType = request.getContentType();
			   if ((contentType.indexOf("multipart/form-data") >= 0)) {
			 
			      DiskFileItemFactory factory = new DiskFileItemFactory();
			      factory.setSizeThreshold(maxMemSize);
			      factory.setRepository(new File("c:\\temp"));
			      ServletFileUpload upload = new ServletFileUpload(factory);
			      upload.setSizeMax( maxFileSize );
			      try{ 
			         List fileItems = upload.parseRequest(request);
			         Iterator i = fileItems.iterator();
			         while ( i.hasNext () ) 
			         {
			            FileItem fi = (FileItem)i.next();
			            if ( !fi.isFormField () )  {
			                String fieldName = fi.getFieldName();
			                String fileName = fi.getName();
			                boolean isInMemory = fi.isInMemory();
			                long sizeInBytes = fi.getSize();
			                
			                String tipo=request.getParameter("tipo");
			                if(tipo.equalsIgnoreCase("fotoCandidato")) {
				                //añadimos a la ruta de la aplicación la carpeta de las imágenes de jugadores y el nombre de la foto que será
				                // el código del último jugador dado de alta + la extensión .png
				                file = new File( filePath + "imagenes/candidatos/" + (controladorBD.dameUltimoCodCandidato()-1) + ".jpg") ;
				                // creamos el archivo
				                fi.write( file ) ;
				                System.out.println("Foto subida con éxito: " + filePath + "imagenes/candidatos/" + (controladorBD.dameUltimoCodCandidato()-1) + ".jpg" );
			                }
			            }
			         }
			    
			      }catch(Exception ex) {
			         System.out.println(ex);
			      }
			   }		
%>
						<h2><b>Foto subida con exito.</b></h2>
						</div>
					</div>
				</section>
	
</body>
</html>