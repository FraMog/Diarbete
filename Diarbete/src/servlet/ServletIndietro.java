package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletIndietro
 */
@WebServlet("/ServletIndietro")
public class ServletIndietro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletIndietro() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int count = (int) request.getSession().getAttribute("count");
		System.out.println(count);
		if (count==0)
		{
			
		}
		else
			count-=2;
		request.getSession().setAttribute("count", count);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
