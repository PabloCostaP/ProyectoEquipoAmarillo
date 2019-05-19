package movimientoCentroPackage;

public class Correo {
	
	public String correoNacionales(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoAutonomicas(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}

	public String correoMunicipales(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoEuropeas(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
public String correoEvento(Voluntario voluntario, Evento evento) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+evento.getDescripcion()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
public String correoNacionalesVoluntarioNuevo(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoAutonomicasVoluntarioNuevo(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}

	public String correoMunicipalesVoluntarioNuevo(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoEuropeasVoluntarioNuevo(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}

}
