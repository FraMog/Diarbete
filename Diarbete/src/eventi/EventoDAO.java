package eventi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import databaseconnection.DBManager;
import eccezioni.ParametroIllegaleException;
import utenti.TipologieUtenti;

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

	
	public Evento mostraUltimoEventoInserito() throws ParametroIllegaleException{
		Connection conn = null;
		Statement s = null;
		try{
		conn = DBManager.getInstance().getConnection();
		
				String query = "SELECT regione, dataInserimento, dataEvento, provincia, comune, indirizzo, descrizione, src, titolo, dottorePubblicante " +
						"FROM evento where dataInserimento=(select max(dataInserimento) from evento)"; 
				 System.out.println(query);
				s = conn.createStatement(); 
				ResultSet resultSet= s.executeQuery(query);
				if(!resultSet.next()){
					return null;
				}
				
				Evento ultimoEventoPubblicato= new Evento(resultSet.getString(9), resultSet.getString(7), resultSet.getString(1), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getTimestamp(3), resultSet.getTimestamp(2), resultSet.getString(10), resultSet.getString(8));
				
			return ultimoEventoPubblicato;
		} catch (SQLException e){
			e.printStackTrace();
			return null;
		}
		 finally{
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


	public Evento mostraEvento(Evento eventoDaMostrare) throws ParametroIllegaleException {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		
				String query = "SELECT regione, dataInserimento, dataEvento, provincia, comune, indirizzo, descrizione, src, titolo, dottorePubblicante " +
						"FROM evento where titolo = ? AND dataInserimento = ?"; 
				
				ps = conn.prepareStatement(query); 
				ps.setString(1, eventoDaMostrare.getTitolo());
				ps.setTimestamp(2, eventoDaMostrare.getDataPubblicazioneEvento());
				 System.out.println(ps);
				ResultSet resultSet= ps.executeQuery();
				if(!resultSet.next()){
					return null;
				}
				
				Evento eventoDettagliato= new Evento(resultSet.getString(9), resultSet.getString(7), resultSet.getString(1), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getTimestamp(3), resultSet.getTimestamp(2), resultSet.getString(10), resultSet.getString(8));
				
			return eventoDettagliato;
		} catch (SQLException e){
			e.printStackTrace();
			return null;
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
