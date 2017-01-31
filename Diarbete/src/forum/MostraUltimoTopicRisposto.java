package forum;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eccezioni.ParametroIllegaleException;

@WebServlet("/MostraUltimoTopicRisposto")
public class MostraUltimoTopicRisposto extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	     doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Topic ultimoTopicRisposto= new TopicDAO().mostraUltimoTopicRisposto();
			req.setAttribute("ultimoTopicRisposto", ultimoTopicRisposto);
			req.getRequestDispatcher("ultimaRispostaForumHomePage.jsp").forward(req,resp);
			return;
		} catch (ParametroIllegaleException e) {
			req.setAttribute("ultimoTopicRisposto", null);
			req.getRequestDispatcher("ultimaRispostaForumHomePage.jsp").forward(req,resp);
			return;
		}
	}

	
	

}
