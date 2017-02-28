package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseconnection.DBManager;
import registrazione.Dottore;
import registrazione.Paziente;

/**
 * Servlet implementation class ServletValoriGlicemici
 */
@WebServlet("/ServletValoriGlicemici")
public class ServletValoriGlicemici extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletValoriGlicemici() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		Paziente paziente = (Paziente)session.getAttribute("paziente");
		Connection conn=null;
		Statement s=null;
		ArrayList<ValoriGlicemici> valori = new ArrayList<ValoriGlicemici>();
		try {
			conn=DBManager.getInstance().getConnection();
			String query="SELECT mattina, pomeriggio, sera, pazienteDiAppartenenza, giorno FROM valoreglicemico WHERE valoreglicemico.pazienteDiAppartenenza='"+paziente.getEmail()+"'";
			s=conn.createStatement();
			ResultSet res=s.executeQuery(query);
			
			while (res.next())
			{
				valori.add(new ValoriGlicemici(res.getInt(1), res.getInt(2), res.getInt(3), res.getString(4), res.getDate(5)));
			}
			session.setAttribute("valori", valori);
		  
		}
		catch (SQLException e) {
			e.printStackTrace();
		} finally{
			if(s!=null)
				try {
					s.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if(conn!=null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/diario.jsp");
		session.setAttribute("count", 0);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
