<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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

</body>
</html>