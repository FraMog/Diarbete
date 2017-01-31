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

@WebServlet("/CancellaTopic")
public class CancellaTopic extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String titoloPostDaCancellare= req.getParameter("titolo");
        String dataPubblicazioneTopic= req.getParameter("dataPubblicazioneTopic");
   
		
		try {
			Topic topicDaCancellare = new Topic(titoloPostDaCancellare, Timestamp.valueOf(dataPubblicazioneTopic));
			if(!(new TopicDAO().cancellaTopic(topicDaCancellare))){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non è stato possibile inserire il topic a causa di un errore interno del server. Riprovare più tardi");
				return;
			}
			resp.setStatus(HttpServletResponse.SC_OK);return;
			
		} catch (ParametroIllegaleException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
			return;
		}
		
	}

	
}
