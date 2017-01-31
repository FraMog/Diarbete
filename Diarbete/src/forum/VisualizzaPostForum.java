package forum;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eccezioni.ParametroIllegaleException;

@WebServlet("/VisualizzaPostForum")
public class VisualizzaPostForum extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Topic topicDaMostrare = new Topic(req.getParameter("titolo"), Timestamp.valueOf(req.getParameter("dataPubblicazioneTopic")));
		    ArrayList<Risposta> elencoRisposteAlTopic = new RispostaDAO().ottieniRisposteAlTopic(topicDaMostrare);
		} catch (ParametroIllegaleException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	
}
