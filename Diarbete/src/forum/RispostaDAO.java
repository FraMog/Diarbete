package forum;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import databaseconnection.DBManager;
import utenti.TipologieUtenti;

public class RispostaDAO {

	public RispostaDAO() {
		// TODO Auto-generated constructor stub
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

}
