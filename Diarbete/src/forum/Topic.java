package forum;

import java.sql.Timestamp;
import java.util.ArrayList;

import eccezioni.ParametroIllegaleException;

public class Topic {

	public Topic() {
		
	}
    
	
	
	
	public Topic(String titolo, String autorePost, String argomento, Timestamp dataInserimento) throws ParametroIllegaleException {
		super();
		if(titolo==null  || titolo.length()==0) throw new ParametroIllegaleException("Il titolo non può essere vuoto!");
		if(autorePost==null  || autorePost.length()==0) throw new ParametroIllegaleException("L'autore del post non può essere vuoto!");
		if(argomento==null  || argomento.length()==0) throw new ParametroIllegaleException("L'argomento del post non può essere vuoto!");
		if(dataInserimento==null ) throw new ParametroIllegaleException("La data di inserimento del post non può essere vuota!");
		this.titolo = titolo;
		this.autorePost = autorePost;
		this.argomento = argomento;
		this.dataInserimento = dataInserimento;
		risposteAlTopic= new ArrayList<Risposta>();
	}

	
	public Topic(String titolo, Timestamp dataInserimento) throws ParametroIllegaleException {
		super();
		if(titolo==null  || titolo.length()==0) throw new ParametroIllegaleException("Il titolo non può essere vuoto!");
		this.titolo = titolo;
		this.autorePost = "";
		this.argomento = "";
		this.dataInserimento = dataInserimento;
	}
	



	public String getTitolo() {
		return titolo;
	}




	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}




	public String getAutorePost() {
		return autorePost;
	}




	public void setAutorePost(String autorePost) {
		this.autorePost = autorePost;
	}




	public String getArgomento() {
		return argomento;
	}




	public void setArgomento(String argomento) {
		this.argomento = argomento;
	}




	public Timestamp getDataInserimento() {
		return dataInserimento;
	}




	public void setDataInserimento(Timestamp dataInserimento) {
		this.dataInserimento = dataInserimento;
	}


	public ArrayList<Risposta> getRisposteAlTopic() {
		return risposteAlTopic;
	}




	public void setRisposteAlTopic(ArrayList<Risposta> risposteAlTopic) {
		this.risposteAlTopic = risposteAlTopic;
	}






	private String titolo, autorePost, argomento;
	private Timestamp dataInserimento;
	private ArrayList <Risposta> risposteAlTopic;
}
