package servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletInviaEmail
 */
@WebServlet("/ServletInviaEmail")
public class ServletInviaEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInviaEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oggetto = request.getHeader("oggetto");
		String commento = request.getHeader("commento");
		
		String host = "smtp.gmail.com";
		String to = "sarazaino7@gmail.com";
		String from = "diarbete.unisa@gmail.com";
		String subject = oggetto; 
		String messageText = commento +"\n";
		final String username="diarbete.unisa@gmail.com";
		final String password="diarbete2016";
		// Create some properties and get the default Session
		Properties props = new Properties();

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session sessionMail = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			Message message = new MimeMessage(sessionMail);
			sessionMail.setDebug(true);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(messageText);

			Transport.send(message);




		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
