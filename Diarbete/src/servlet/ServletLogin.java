package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Paziente p=null;
	private Dottore d=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getHeader("user");
		String psw = request.getHeader("psw");
		String tipo=request.getHeader("tipo");

		HttpSession session = request.getSession();
		if(tipo.equals("paziente")){
			boolean valoreP=esistePaziente(user,psw);
			if(valoreP){
				p=riempiPaziente(user,psw);
			}
			if(valoreP==false || p==null){
				response.setHeader("controllo", "no");
			}
			else{
				session.setAttribute("paziente", p);
				session.removeAttribute("dottore");
				response.setHeader("controllo", "ok");
			}
		}

		else if(tipo.equals("dottore")){
			boolean valoreD= esisteDottore(user,psw);
			if(valoreD){
				d=riempiDottore(user,psw);
			}
			if(valoreD==false || d==null){
				System.out.println("no ok");
				response.setHeader("controllo", "no");
			}
			else{
				session.setAttribute("dottore", d);
				session.removeAttribute("paziente");
				response.setHeader("controllo", "ok");
			}
		}




	}

	private Dottore riempiDottore(String user, String psw) {
		Connection conn=null;
		Statement s=null;
		Dottore d=null;
		try {
			conn=DBManager.getInstance().getConnection();
			String query="SELECT * FROM dottore WHERE dottore.email='"+user+"' AND dottore.password='"+psw+"'";
			s=conn.createStatement();
			ResultSet res=s.executeQuery(query);
			while(res.next()) {
		        String a0=res.getString(1);
		        String a1=res.getString(2);
		        String a2=res.getString(3);
		        String a3=res.getString(4);
		        String a4=res.getString(5);
		        String a5=res.getString(6);
		        String a6=res.getString(7);
		        String a7=res.getString(8);
		        String a8=res.getString(9);
		        
		        d=new Dottore(a0,a1,a2,a3,a4,a5,a6,a7,a8);
		        
		    }
			  
		}
		catch (SQLException e) {
			e.printStackTrace();
			return d;
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
		return d;
	}


	private boolean esisteDottore(String user, String psw) {
		Connection conn=null;
		Statement s=null;
		try {
			conn=DBManager.getInstance().getConnection();
			String query="SELECT * FROM dottore WHERE dottore.email='"+user+"' AND dottore.password='"+psw+"'";
			s=conn.createStatement();
			s.executeQuery(query);
			if(s.getResultSet() != null) //verifico che l'update abbia avuto effetto su una riga
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






	private boolean esistePaziente(String user, String psw) {
		Connection conn=null;
		Statement s=null;
		try {
			conn=DBManager.getInstance().getConnection();
			String query="SELECT * FROM paziente WHERE paziente.email='"+user+"' AND paziente.password='"+psw+"'";
			s=conn.createStatement();
			s.executeQuery(query);
			if(s.getResultSet() != null) //verifico che l'update abbia avuto effetto su una riga
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




	private Paziente riempiPaziente(String user, String psw) {
		Connection conn=null;
		Statement s=null;
		Paziente p=null;
		try {
			conn=DBManager.getInstance().getConnection();
			String query="SELECT * FROM paziente WHERE paziente.email='"+user+"' AND paziente.password='"+psw+"'";
			s=conn.createStatement();
			ResultSet res=s.executeQuery(query);
			while(res.next()){
				String a0=res.getString(1);
		        String a1=res.getString(2);
		        String a2=res.getString(3);
		        String a3=res.getString(4);
		        String a4=res.getString(5);
		        String a5=res.getString(6);
		        String a6=res.getString(7);
		        int a7=res.getInt(8);
		        Date a8=res.getDate(9);
		        
		        p=new Paziente(a0,a1,a2,a3,a4,a5,a6,a7,a8);  
			}
 
		}
		catch (SQLException e) {
			e.printStackTrace();
			return p;
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
		return p;
	}
}

