package eventi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import databaseconnection.DBManager;

public class EventoDAO {

	public boolean inserisciEvento(Evento evento) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "INSERT INTO evento (regione, dataInserimento, dataEvento, provincia, comune, indirizzo, descrizione, src, titolo, dottorePubblicante) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		ps = conn.prepareStatement(query);
		ps.setString(1, evento.getRegione());
		ps.setTimestamp(2, evento.getDataPubblicazioneEvento());
		ps.setTimestamp(3, evento.getDataEvento());
		ps.setString(4, evento.getProvincia());
		ps.setString(5, evento.getComune());
		ps.setString(6, evento.getIndirizzo());
		ps.setString(7, evento.getDescrizione());
		System.out.println(evento.getSrcEvento());
		ps.setString(8, evento.getSrcEvento());
		ps.setString(9, evento.getTitolo());
		ps.setString(10, evento.getPubblicatoreEvento());
		ps.executeUpdate();
		
		if(ps.getUpdateCount()==1) //verifico che l'update abbia avuto effetto su una riga
			return true;
		else
			return false;
		
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
