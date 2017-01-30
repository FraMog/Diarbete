package forum;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import databaseconnection.DBManager;

public class TopicDAO {

	public TopicDAO() {
	}

	public boolean inserisciTopic(Topic topic)  {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "INSERT INTO postforum (titolo, dataInserimento, autorePost, argomento) VALUES (?, ?, ?, ?)";
		ps = conn.prepareStatement(query);
		ps.setString(1, topic.getTitolo());
		ps.setTimestamp(2, topic.getDataInserimento());
		ps.setString(3, topic.getAutorePost());
		ps.setString(4, topic.getArgomento());
		ps.executeUpdate();
		return true;
		
		} catch (SQLException e){
			e.printStackTrace();
			return false;
		}
		 finally{
				if(ps!=null)
					try {
						ps.close();
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
