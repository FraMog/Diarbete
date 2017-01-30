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
	
	/**
	 * Metodo che uso per ricercare i post, mostrare l'ultimo post nella home, o mostrare i post più recenti nella home
	 * @param titolo Il titolo della discussione da cercare, null se cerco i post recenti
	 * @param numeroPagina il numero di pagina da mostrare nel pagination, 0 se cerco l'ultimo post (nella home page)
	 * @return il/i topic/topics desiderato
	 * @throws ParametroIllegaleException 
	 */
	public Topic mostraUltimoTopicRisposto() throws ParametroIllegaleException{
		Connection conn = null;
		Statement s = null;
		try{
		conn = DBManager.getInstance().getConnection();
		
				String query = "SELECT DISTINCT postforum.titolo, messaggioforum.body, messaggioforum.dataInserimentoRisposta, messaggioforum.autoreRispostaPaziente, messaggioforum.autoreRispostaDottore FROM postforum inner join messaggioforum " +
				"ON (messaggioforum.titoloPost = postforum.titolo AND messaggioforum.dataPubblicazionePost = postforum.dataInserimento) WHERE messaggioforum.dataInserimentoRisposta IN (" +
						                                                                                                                                                   "SELECT DISTINCT dataInserimentoRisposta FROM messaggioforum"
				                                                                                                                                                          + " WHERE dataInserimentoRisposta>=ALL("
				                                                                                                                                                          +                                  "SELECT DISTINCT dataInserimentoRisposta FROM messaggioforum))";
				s = conn.createStatement(); 
				ResultSet resultSet= s.executeQuery(query);
				if(!resultSet.next()){
					return null;
				}
				
				Topic ultimoTopicRisposto= new Topic(resultSet.getString(1));
				Risposta ultimaRisposta;
				if(resultSet.getString(4)!=null)//se la risposta è stata fatta da un paziente
				     ultimaRisposta= new Risposta(resultSet.getString(2), resultSet.getString(4), resultSet.getTimestamp(3),ultimoTopicRisposto, TipologieUtenti.PAZIENTE);
				else if(resultSet.getString(5)!=null){//se la risposta è stata scritta da un dottore
					 ultimaRisposta= new Risposta(resultSet.getString(2), resultSet.getString(5), resultSet.getTimestamp(3),ultimoTopicRisposto, TipologieUtenti.DOTTORE);
				}
				else throw new ParametroIllegaleException("Errore! Il messaggio non è stato scritto ne da un paziente ne da un dottore!");
				ArrayList<Risposta> elencoContenenteSoloLultimaRisposta=new ArrayList<Risposta>();
				elencoContenenteSoloLultimaRisposta.add(ultimaRisposta);
				ultimoTopicRisposto.setRisposteAlTopic(elencoContenenteSoloLultimaRisposta);
				return ultimoTopicRisposto;
			
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
	
}
