package eventi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import databaseconnection.DBManager;
import eccezioni.ParametroIllegaleException;
import forum.Risposta;
import forum.Topic;
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

	public String getSrcImmagine(Evento eventoDaCancellare){
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "SELECT src FROM evento WHERE titolo = ? AND dataInserimento = ?";
		ps = conn.prepareStatement(query);
		ps.setString(1, eventoDaCancellare.getTitolo());
		ps.setTimestamp(2, eventoDaCancellare.getDataPubblicazioneEvento());
		ResultSet rs= ps.executeQuery();
		if(!rs.next())return null;
		System.out.println(rs.getString(1));
		return rs.getString(1);
				
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

	public boolean cancellaEvento(Evento eventoDaCancellare) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "DELETE FROM evento WHERE titolo = ? AND dataInserimento = ?";
		ps = conn.prepareStatement(query);
		ps.setString(1, eventoDaCancellare.getTitolo());
		ps.setTimestamp(2, eventoDaCancellare.getDataPubblicazioneEvento());
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
	
	
	public HashMap<String, Object> ottieni6Eventi(int offset, String stringaCercata, String tipologiaRicerca) throws ParametroIllegaleException {
		if (offset<0)throw new ParametroIllegaleException("Si sta cercando di accedere a dei topic inesistenti");
		Connection conn = null;
		Statement s = null;
		HashMap <String, Object>map = new HashMap <String, Object>();
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "SELECT sql_calc_found_rows regione, dataInserimento, dataEvento, provincia, comune, indirizzo, descrizione, src, titolo, dottorePubblicante " +
				"from evento ";
				if(tipologiaRicerca!=null){
					System.out.println(tipologiaRicerca);
					if(tipologiaRicerca.equals(MostraEventiPagina.CERCAPERTITOLO))
						query += "where titolo LIKE '%" + stringaCercata + "%' ";
					else if (tipologiaRicerca.equals(MostraEventiPagina.CERCAPERREGIONE))
						query += "where regione LIKE '%" + stringaCercata + "%' ";
					else if (tipologiaRicerca.equals(MostraEventiPagina.CERCAPERPROVINCIA))
						query += "where provincia LIKE '%" + stringaCercata + "%' ";
					else if (tipologiaRicerca.equals(MostraEventiPagina.CERCAPERCOMUNE))
						query += "where comune LIKE '%" + stringaCercata + "%' ";
					else throw new ParametroIllegaleException("La tipologia di ricerca non è in nessuno degli stati conosciuti!");
				}
				query+="order by dataInserimento desc " +
				"LIMIT 6 offset " + 6*offset;
		System.out.println(query);
		s = conn.createStatement();
		ResultSet rs1=s.executeQuery(query);
		if (!rs1.next()){//Se non ci sono topic attualmente presenti
			map.put("numeroEventiTotali", new Integer(0));
			map.put("eventiDaMostrare", null);
			return map;
		}
		ArrayList<Evento> elencoEventiDaMostrare = new ArrayList<Evento>();
		do {		
			Evento evento = new Evento(rs1.getString(9), rs1.getString(7), rs1.getString(1), rs1.getString(4), rs1.getString(5), rs1.getString(6), rs1.getTimestamp(3), rs1.getTimestamp(2), rs1.getString(10), rs1.getString(8));
			elencoEventiDaMostrare.add(evento);
		} while(rs1.next());
		
		map.put("eventiDaMostrare", elencoEventiDaMostrare);
		s.close();
		
		
        s = conn.createStatement();
		query="SELECT FOUND_ROWS();";
		ResultSet rs2= s.executeQuery(query);
		rs2.next();
		map.put("numeroEventiTotali", new Integer(rs2.getInt(1)));
		
			
		  return map;
		} catch (SQLException e){
			e.printStackTrace();
			map.put("numeroEventiTotali", new Integer(0));
			map.put("eventiDaMostrare", null);
			return map;
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
	
	
}
