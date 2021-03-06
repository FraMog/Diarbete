package registrazione;

import java.sql.Date;

public class Dottore {
	private String email,password,nome,cognome,indirizzo,src,ambito,specializzazione,curriculum;
	
	public Dottore(String email, String password,String nome, String cognome, String indirizzo,String src, String ambito,String specializzazione,String curriculum){
		this.email=email;
		this.password=password;
		this.nome=nome;
		this.cognome=cognome;
		this.indirizzo=indirizzo;
		this.src=src;
		this.ambito=ambito;
		this.specializzazione=specializzazione;
		this.curriculum=curriculum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getAmbito() {
		return ambito;
	}

	public void setAmbito(String ambito) {
		this.ambito = ambito;
	}

	public String getSpecializzazione() {
		return specializzazione;
	}

	public void setSpecializzazione(String specializzazione) {
		this.specializzazione = specializzazione;
	}

	public String getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}
}
