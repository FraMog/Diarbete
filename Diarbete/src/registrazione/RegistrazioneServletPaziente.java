package registrazione;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.DBManager;

@WebServlet("/registrazioneServletPaziente")
public class RegistrazioneServletPaziente extends HttpServlet{
	
private static final long serialVersionUID = 1L;


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password =request.getParameter("password");
		String nome =request.getParameter("nome");
		String cognome =request.getParameter("cognome");
		String indirizzo =request.getParameter("indirizzo");
		String src =request.getParameter("src");
		String descrizione =request.getParameter("descrizione");
		int tipologia =Integer.parseInt(request.getParameter("tipologia"));
		String date=request.getParameter("data");
		Date data= java.sql.Date.valueOf(date);
	        
	
		Paziente paziente=new Paziente(email, password, nome, cognome, indirizzo, src, descrizione, tipologia, data);
		boolean valore = registraAccount(paziente);
		if(valore==true){
			request.getSession().setAttribute("password", password);
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write("true");
		} 
		else{
			try {
				throw new Exception("La registrazione dell'account non ha avuto successo, riprova più tardi");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


	private boolean registraAccount(Paziente toInsert){
		Connection conn=null;
		Statement s=null;
		try {
			conn=DBManager.getInstance().getConnection();
			String query="INSERT INTO paziente VALUES ('"+toInsert.getEmail()+"','"+toInsert.getPassword()+"','"+toInsert.getNome()+"','"+toInsert.getCognome()+"','"+toInsert.getIndirizzo()+"','"+toInsert.getSrc()+"','"+toInsert.getDescrizione()+"','"+toInsert.getTipoDiabete()+"','"+toInsert.getData()+"')";
			s=conn.createStatement();
			s.executeUpdate(query);
			if(s.getUpdateCount()==1) //verifico che l'update abbia avuto effetto su una riga
				return true;
			else
				return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
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
	}
}



