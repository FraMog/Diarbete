package registrazione;

import java.sql.Date;

public class Paziente {
		private String email,password,nome,cognome,indirizzo,src,descrizione;
		int tipoDiabete;
		Date data;
		public Paziente(String email, String password,String nome, String cognome, String indirizzo,String src, String descrizione,int tipoDiabete,Date data){
			this.email=email;
			this.password=password;
			this.nome=nome;
			this.cognome=cognome;
			this.indirizzo=indirizzo;
			this.src=src;
			this.descrizione=descrizione;
			this.tipoDiabete=tipoDiabete;
			this.data=data;
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
		public String getDescrizione() {
			return descrizione;
		}
		public void setDescrizione(String descrizione) {
			this.descrizione = descrizione;
		}
		public int getTipoDiabete() {
			return tipoDiabete;
		}
		public void setTipoDiabete(int tipoDiabete) {
			this.tipoDiabete = tipoDiabete;
		}
		public Date getData() {
			return data;
		}
		public void setData(Date data) {
			this.data = data;
		}
}
