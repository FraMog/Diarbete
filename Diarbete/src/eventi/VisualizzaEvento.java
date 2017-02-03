package eventi;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eccezioni.ParametroIllegaleException;
import forum.Risposta;
import forum.RispostaDAO;
import forum.Topic;

/**
 * Servlet implementation class VisualizzaEvento
 */
@WebServlet("/VisualizzaEvento")
public class VisualizzaEvento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Evento eventoDaMostrare = new Evento(req.getParameter("titolo"), Timestamp.valueOf(req.getParameter("dataPubblicazioneEvento")));
		    Evento eventoDettagliato= new EventoDAO().mostraEvento(eventoDaMostrare);
			req.setAttribute("eventoDettagliato", eventoDettagliato);
		    req.getRequestDispatcher("mostraEvento.jsp").forward(req, resp);
		    return;
		}
		catch (ParametroIllegaleException | IllegalArgumentException e) {
			e.printStackTrace();
			  req.setAttribute("eventoDettagliato", null);
			  req.getRequestDispatcher("mostraEvento.jsp").forward(req, resp);
			  return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
