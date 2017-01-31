package forum;

import java.sql.Timestamp;

import eccezioni.ParametroIllegaleException;

public class Risposta {

	public Risposta() {
	}

	
	
	public Risposta(String body, String autoreRisposta, Timestamp dataInserimento, Topic topicDiRiferimento,  String tipologiaUtenteCheHaRisposto) throws ParametroIllegaleException {
		super();
		if(body==null  || body.length()==0) throw new ParametroIllegaleException("Il corpo del messaggio non può essere vuoto!");
		if(autoreRisposta==null  || autoreRisposta.length()==0) throw new ParametroIllegaleException("L'autore della risposta non può essere vuoto!");
		if(dataInserimento==null ) throw new ParametroIllegaleException("La data di inserimento del post non può essere vuota!");
		this.body = body;
		this.autoreRisposta = autoreRisposta;
		this.dataInserimento = dataInserimento;
		this.topicDiRiferimento=topicDiRiferimento;
		this.tipologiaUtenteCheHaRisposto=tipologiaUtenteCheHaRisposto;
		srcUtente="";
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



	public Topic getTopicDiRiferimento() {
		return topicDiRiferimento;
	}



	public void setTopicDiRiferimento(Topic topicDiRiferimento) {
		this.topicDiRiferimento = topicDiRiferimento;
	}



	



	public String getTipologiaUtenteCheHaRisposto() {
		return tipologiaUtenteCheHaRisposto;
	}



	public void setTipologiaUtenteCheHaRisposto(String tipologiaUtenteCheHaRisposto) {
		this.tipologiaUtenteCheHaRisposto = tipologiaUtenteCheHaRisposto;
	}




	public String getSrcUtente() {
		return srcUtente;
	}



	public void setSrcUtente(String srcUtente) {
		this.srcUtente = srcUtente;
	}









	private String body, autoreRisposta, tipologiaUtenteCheHaRisposto;
	private Timestamp dataInserimento;
	private Topic topicDiRiferimento;
	private String srcUtente;

	
}
