package forum;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import forum.Risposta;
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
		
				String query = "SELECT DISTINCT postforum.titolo, messaggioforum.body, messaggioforum.dataInserimentoRisposta, messaggioforum.autoreRispostaPaziente, messaggioforum.autoreRispostaDottore, postforum.dataInserimento FROM postforum inner join messaggioforum " +
				"ON (messaggioforum.titoloPost = postforum.titolo AND messaggioforum.dataPubblicazionePost = postforum.dataInserimento) WHERE messaggioforum.dataInserimentoRisposta IN (" +
						                                                                                                                                                   "SELECT DISTINCT dataInserimentoRisposta FROM messaggioforum"
				                                                                                                                                                         + " WHERE dataInserimentoRisposta=("
				                                                                                                                                                                                           +"SELECT MAX(dataInserimentoRisposta) FROM messaggioforum))";
				 System.out.println(query);
				s = conn.createStatement(); 
				ResultSet resultSet= s.executeQuery(query);
				if(!resultSet.next()){
					return null;
				}
				
				Topic ultimoTopicRisposto= new Topic(resultSet.getString(1),resultSet.getTimestamp(6));
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

	public boolean cancellaTopic(Topic topicDaCancellare) {
		Connection conn = null;
		PreparedStatement ps = null;
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "DELETE FROM postforum WHERE titolo = ? AND dataInserimento = ?";
		ps = conn.prepareStatement(query);
		ps.setString(1, topicDaCancellare.getTitolo());
		ps.setTimestamp(2, topicDaCancellare.getDataInserimento());
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

	/**
	 * 
	 * @param offset L'offset della pagina da mostrare (0= prima pagina cioè ultimi topic risposti dal numero 1 a 5, 1= seconda pagina, cioè ultimi topic risposti dal numero 6 al 10) 
	 * @param titoloTopicDaCercare Se non sto cercando semplicemente dei topic, ma lo sto facendo anche secondo uno specifico titolo (tramite form di ricerca)
	 * @return Una hashMap che contiene due valori, un valore per il numero di topic totali da usare per capire quante pagine mostrare nel paginator, e le ultime risposte ai topic (le quali contengono un riferimento al proprio topic)
	 * @throws ParametroIllegaleException se l'offset è <0 oppure se l'utente che ha pubblicato la risposta non è ne un paziente ne un dottore
	 */
	public HashMap<String, Object> ottieni5Topic(int offset, String titoloTopicDaCercare) throws ParametroIllegaleException {
		if (offset<0)throw new ParametroIllegaleException("Si sta cercando di accedere a dei topic inesistenti");
		Connection conn = null;
		Statement s = null;
		HashMap <String, Object>map = new HashMap <String, Object>();
		try{
		conn = DBManager.getInstance().getConnection();
		String query = "select sql_calc_found_rows tabella2.titolo, tabella2.autorePost, tabella2.argomento, tabella2.dataInserimentoPost, tabella2.ultimaRisposta, tabella2.numeroRisposte, messaggioforum.autoreRispostaDottore, messaggioforum.autoreRispostaPaziente, messaggioforum.dataInserimentoRisposta " +
				"from messaggioforum join (" +
					"SELECT postforum.titolo, postforum.autorePost, postforum.argomento, postforum.dataInserimento as dataInserimentoPost, max(messaggioforum.dataInserimentoRisposta) as ultimaRisposta, count(*) as numeroRisposte " +
					"FROM postforum join messaggioforum on (postforum.titolo = messaggioforum.titoloPost and postforum.dataInserimento = messaggioforum.dataPubblicazionePost)";
		            if(titoloTopicDaCercare!=null) query+=" WHERE postforum.titolo LIKE '%" + titoloTopicDaCercare + "%' ";
					query+="group by postforum.titolo, postforum.dataInserimento) tabella2 on (messaggioforum.titoloPost=tabella2.titolo and messaggioForum.dataPubblicazionePost=tabella2.dataInserimentoPost and messaggioforum.dataInserimentoRisposta=tabella2.ultimaRisposta)" +
				"order by tabella2.ultimaRisposta desc " +
				"LIMIT 5 offset " + 5*offset;
		System.out.println(query);
		s = conn.createStatement();
		ResultSet rs1=s.executeQuery(query);
		if (!rs1.next()){//Se non ci sono topic attualmente presenti
			map.put("numeroTopicTotali", new Integer(0));
			map.put("topicDaMostrare", null);
			return map;
		}
		ArrayList<Risposta> elencoRisposte = new ArrayList<Risposta>();
		do {		
			Topic topic;
			topic = new Topic(rs1.getString(1), rs1.getString(2), rs1.getString(3), rs1.getTimestamp(4));
			topic.setNumeroDiRisposte(rs1.getInt(6));
			System.out.println(rs1.getInt(6));	
			Risposta risposta;
			risposta=new Risposta(topic, rs1.getTimestamp(9));
			if(rs1.getString(8)!=null){//Se l'ultima risposta è del dottore
				risposta.setAutoreRisposta(rs1.getString(8));
				elencoRisposte.add(risposta);
			} else if(rs1.getString(7)!=null){
				risposta.setAutoreRisposta(rs1.getString(7));
				elencoRisposte.add(risposta);
			}
			else {
				throw new ParametroIllegaleException("L'utente della risposta non è ne un paziente ne un dottore!");
			}
		} while(rs1.next());
		
		map.put("topicDaMostrare", elencoRisposte);
		s.close();
		
		
        s = conn.createStatement();
		query="SELECT FOUND_ROWS();";
		ResultSet rs2= s.executeQuery(query);
		rs2.next();
		map.put("numeroTopicTotali", new Integer(rs2.getInt(1)));
		
			
		  return map;
		} catch (SQLException e){
			e.printStackTrace();
			map.put("numeroTopicTotali", new Integer(0));
			map.put("topicDaMostrare", null);
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
