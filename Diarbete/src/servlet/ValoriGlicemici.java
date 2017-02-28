package servlet;

import java.sql.Date;

public class ValoriGlicemici {

	public ValoriGlicemici(int mattina, int pomeriggio, int sera, String email, Date data) {
		super();
		this.mattina = mattina;
		this.pomeriggio = pomeriggio;
		this.sera = sera;
		this.email = email;
		this.data = data;
	}
	
	
	public int getMattina() {
		return mattina;
	}
	public void setMattina(int mattina) {
		this.mattina = mattina;
	}
	public int getPomeriggio() {
		return pomeriggio;
	}
	public void setPomeriggio(int pomeriggio) {
		this.pomeriggio = pomeriggio;
	}
	public int getSera() {
		return sera;
	}
	public void setSera(int sera) {
		this.sera = sera;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}


	private int mattina, pomeriggio, sera;
	private String email;
	private Date data;
}
