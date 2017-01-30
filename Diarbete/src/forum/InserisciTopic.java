package forum;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eccezioni.ParametroIllegaleException;
import utenti.TipologieUtenti;

@WebServlet("/InserisciTopic")
public class InserisciTopic extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Topic topic = new Topic(req.getParameter("titolo"), "fracesco@studente.it", req.getParameter("argomento"), new Timestamp(System.currentTimeMillis()));
			Risposta primoMessaggio= new Risposta(req.getParameter("body"), "fracesco@studente.it", new Timestamp(System.currentTimeMillis()),topic, TipologieUtenti.PAZIENTE);
			if(!(new TopicDAO().inserisciTopic(topic))){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non � stato possibile inserire il topic a causa di un errore interno del server. Riprovare pi� tardi");
				return;
			}
			if(!(new RispostaDAO().inserisciRisposta(primoMessaggio))){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non � stato possibile inserire il topic a causa di un errore interno del server. Riprovare pi� tardi");
				return;
			}
		} catch (ParametroIllegaleException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
			return;
		}
	}

	
}
