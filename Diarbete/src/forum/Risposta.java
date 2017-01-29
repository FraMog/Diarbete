package forum;

import java.sql.Timestamp;

public class Risposta {

	public Risposta() {
	}

	
	
	public Risposta(String body, String autoreRisposta, Timestamp dataInserimento) {
		super();
		this.body = body;
		this.autoreRisposta = autoreRisposta;
		this.dataInserimento = dataInserimento;
	}

	
	


	public String getBody() {
		return body;
	}



	public void setBody(String body) {
		this.body = body;
	}



	public String getAutoreRisposta() {
		return autoreRisposta;
	}



	public void setAutoreRisposta(String autoreRisposta) {
		this.autoreRisposta = autoreRisposta;
	}



	public Timestamp getDataInserimento() {
		return dataInserimento;
	}



	public void setDataInserimento(Timestamp dataInserimento) {
		this.dataInserimento = dataInserimento;
	}





	private String body, autoreRisposta;
	private Timestamp dataInserimento;
	
}
