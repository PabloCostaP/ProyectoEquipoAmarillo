package movimientoCentroPackage;

public class Correo {
	
	public String correoNacionales(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://am-tm.es/wp-content/uploads/2019/04/eg-2019.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Nacionales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Queremos darle las gracias por apoyar nuestro partido y participar en nuestros eventos, esperamos que lo disfrute y comparta con sus amigos.</p>" +
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoAutonomicas(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://www.tarancondigital.es/wp-content/uploads/2019/04/02-e1554666959772.jpg\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Autonomicas en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Queremos darle las gracias por apoyar nuestro partido y participar en nuestros eventos, esperamos que lo disfrute y comparta con sus amigos.</p>" +
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}

	public String correoMunicipales(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://i2.wp.com/aytoconsuegra.es/wp-content/uploads/2019/05/6128_elecciones-municipales-2019-670.png?resize=670%2C321&ssl=1\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Municipales en "+campanna.getAmbito()+". </p>\r\n" + 
				"		        	<p>Queremos darle las gracias por apoyar nuestro partido y participar en nuestros eventos, esperamos que lo disfrute y comparta con sus amigos.</p>" +
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
	public String correoEuropeas(Voluntario voluntario, Campanna campanna) {
		
		String plantilla = "<h1>Bienvenido "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"http://www.europarl.europa.eu/spain/barcelona/media/static/images/import/com_funcionen/es_cpe-elccions-europees.jpg\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para las elecciones Europeas en "+campanna.getAmbito()+". </p>\r\n" +
				"		        	<p>Queremos darle las gracias por apoyar nuestro partido y participar en nuestros eventos, esperamos que lo disfrute y comparta con sus amigos.</p>" +
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
public String correoEvento(Voluntario voluntario, Evento evento) {
		
		String plantilla = "<h1>Hola de nuevo "+voluntario.getNombre()+"</h1>\r\n" + 
				"		        \r\n" + 
				"		        	<img src=\"https://www.centrodemocratico.org/wp-content/uploads/2018/01/NUEVO-LOGO-CD.png\">\r\n" + 
				"		        \r\n" + 
				"		        	<p>Ha sido registrado como voluntario para el evento "+evento.getNombre()+". </p>\r\n" + 
				"		        	<p>Queremos darle las gracias por apoyar nuestro partido y participar en nuestros eventos, esperamos que lo disfrute y comparta con sus amigos.</p>" +
				"		        	<p>Nos pondremos en contacto con usted en el telefono "+voluntario.getTelefono()+" para darle todos los detalles.</p>";
		
		return plantilla;
	}
	
}
