package forum;

import java.sql.Timestamp;

public class Topic {

	public Topic() {
		
	}
    
	
	
	
	public Topic(String titolo, String autorePost, String argomento, Timestamp dataInserimento) {
		super();
		this.titolo = titolo;
		this.autorePost = autorePost;
		this.argomento = argomento;
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




	private String titolo, autorePost, argomento;
	private Timestamp dataInserimento;
}
