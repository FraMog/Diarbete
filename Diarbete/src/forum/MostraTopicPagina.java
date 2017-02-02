package forum;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import eccezioni.ParametroIllegaleException;

@WebServlet("/MostraTopicPagina")
public class MostraTopicPagina extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			map = new TopicDAO().ottieni5Topic(Integer.parseInt(req.getParameter("paginaDaMostrare"))-1, req.getParameter("titoloTopicDaCercare"));
		} catch (ParametroIllegaleException e) {
			map.put("numeroTopicTotali", new Integer(0));
			map.put("topicDaMostrare", null);
			e.printStackTrace();
		}
		
		req.setAttribute("hashMap", map);
		req.getRequestDispatcher("mostraPaginaTopic.jsp").forward(req, resp);
	}

	
}
