package forum;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import databaseconnection.DBManager;
import eccezioni.ParametroIllegaleException;
import utenti.TipologieUtenti;

public class RispostaDAO {

	public RispostaDAO() {
	}

	public boolean inserisciRisposta(Risposta risposta) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "INSERT INTO messaggioforum (titoloPost, dataPubblicazionePost, dataInserimentoRisposta, body, autoreRispostaPaziente, autoreRispostaDottore) VALUES (?,?,?,?,?,?)";
		
		ps = conn.prepareStatement(query);
		ps.setString(1, risposta.getTopicDiRiferimento().getTitolo());
		ps.setTimestamp(2, risposta.getTopicDiRiferimento().getDataInserimento());
		ps.setTimestamp(3, risposta.getDataInserimento());
		ps.setString(4, risposta.getBody());
		if (risposta.getTipologiaUtenteCheHaRisposto().equals(TipologieUtenti.DOTTORE)){
			ps.setString(5, null);
			ps.setString(6, risposta.getAutoreRisposta());
		}else {
			ps.setString(5, risposta.getAutoreRisposta());
			ps.setString(6, null);
		}
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

	
	
	public ArrayList<Risposta> ottieniRisposteAlTopic(Topic topicDaMostrare) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "SELECT DISTINCT messaggioforum.dataInserimentoRisposta, messaggioforum.body, messaggioforum.autoreRispostaDottore, messaggioforum.autoreRispostaPaziente, dottore.src, paziente.src FROM  messaggioforum left join dottore ON (messaggioforum.autoreRispostaDottore=dottore.email) left join paziente ON (messaggioforum.autoreRispostaPaziente=paziente.email) WHERE messaggioforum.titoloPost=? AND messaggioforum.dataPubblicazionePost=? ORDER BY messaggioforum.dataInserimentoRisposta ASC";
		ps = conn.prepareStatement(query);
		ps.setString(1, topicDaMostrare.getTitolo());
		ps.setTimestamp(2, topicDaMostrare.getDataInserimento());
		System.out.println(ps);
		ResultSet resultSet= ps.executeQuery();
		
		if(!resultSet.next()) return null;
		
		ArrayList<Risposta> elencoRisposte=new ArrayList<Risposta>();
		do {		
			Risposta risposta;
			if(resultSet.getString(3)!=null){//Se la risposta è del dottore
				risposta = new Risposta(resultSet.getString(2), resultSet.getString(3), resultSet.getTimestamp(1), topicDaMostrare, TipologieUtenti.DOTTORE);
				risposta.setSrcUtente(resultSet.getString(5));
				elencoRisposte.add(risposta);
			} else if(resultSet.getString(4)!=null){
				risposta = new Risposta(resultSet.getString(2), resultSet.getString(4), resultSet.getTimestamp(1), topicDaMostrare, TipologieUtenti.PAZIENTE);
				risposta.setSrcUtente(resultSet.getString(6));
				elencoRisposte.add(risposta);
			}
			else {
				throw new ParametroIllegaleException("L'utente della risposta non è ne un paziente ne un dottore!");
			}
		} while(resultSet.next());
		
		return elencoRisposte;
		} catch (SQLException e){
			e.printStackTrace();
			return null;
	
		} catch (ParametroIllegaleException e) {
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

	public boolean cancellaRisposta(Risposta rispostaDaCancellare) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "DELETE FROM messaggioforum WHERE titoloPost = ? AND dataPubblicazionePost = ? AND dataInserimentoRisposta=?";
		ps = conn.prepareStatement(query);
		ps.setString(1, rispostaDaCancellare.getTopicDiRiferimento().getTitolo());
		ps.setTimestamp(2, rispostaDaCancellare.getTopicDiRiferimento().getDataInserimento());
		ps.setTimestamp(3, rispostaDaCancellare.getDataInserimento());
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
