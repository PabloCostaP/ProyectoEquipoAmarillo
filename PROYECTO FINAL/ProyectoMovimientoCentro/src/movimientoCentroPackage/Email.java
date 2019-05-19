package movimientoCentroPackage;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	//Metodo para mandar email con formato html con la libreria JavaMail
	public boolean enviarCorreo(String para, String mensaje, String asunto) {
		boolean enviado = false;
		String de = "movimientocentronoreply@gmail.com";
		String clave = "Nelson2000";
		
			try {
				String host = "smtp.gmail.com";
				Properties prop = System.getProperties();
				prop.put("mail.smtp.starttls.enable","true");
				prop.put("mail.smtp.host", host);
				prop.put("mail.smtp.user", de);
				prop.put("mail.smtp.password", clave);
				prop.put("mail.smtp.port", "587");
				prop.put("mail.smtp.auth", "true");
				
				Session sesion = Session.getDefaultInstance(prop, null);
			
				Message message = new MimeMessage(sesion);
				message.setFrom(new InternetAddress(para));
				
				message.setRecipient(Message.RecipientType.TO, new InternetAddress(para));
				message.setSubject(asunto);
				message.setContent(mensaje, "text/html");
				
				Transport transport = sesion.getTransport("smtp");
				transport.connect(host,de,clave);
				transport.sendMessage(message, message.getAllRecipients());
				transport.close();
				enviado = true;
				
			}catch(Exception e) {
				
				e.printStackTrace();
				
			}
		
		return enviado;
	}

}
