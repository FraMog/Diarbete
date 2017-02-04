package eventi;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import eccezioni.ParametroIllegaleException;

@WebServlet("/MostraEventiPagina")
public class MostraEventiPagina extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			map = new EventoDAO().ottieni6Eventi(Integer.parseInt(req.getParameter("paginaDaMostrare"))-1, req.getParameter("stringaCercata"), null);
		} catch (ParametroIllegaleException e) {
			map.put("numeroEventiTotali", new Integer(0));
			map.put("eventiDaMostrare", null);
			e.printStackTrace();
		}
		
		req.setAttribute("hashMap", map);
		req.getRequestDispatcher("mostraPaginaEventi.jsp").forward(req, resp);
	}

	
}
