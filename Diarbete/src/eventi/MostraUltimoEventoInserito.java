package eventi;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import eccezioni.ParametroIllegaleException;

@WebServlet("/MostraUltimoEventoInserito")
public class MostraUltimoEventoInserito extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	     doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Evento ultimoEventoInserito= new EventoDAO().mostraUltimoEventoInserito();
			req.setAttribute("ultimoEventoInserito", ultimoEventoInserito);
			req.getRequestDispatcher("ultimoEventoInseritoHomePage.jsp").forward(req,resp);
			return;
		} catch (ParametroIllegaleException e) {
			req.setAttribute("ultimoEventoInserito", null);
			req.getRequestDispatcher("ultimoEventoInseritoHomePage.jsp").forward(req,resp);
			return;
		}
	}
}
