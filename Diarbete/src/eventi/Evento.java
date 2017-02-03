package eventi;

import java.sql.Timestamp;

import eccezioni.ParametroIllegaleException;

public class Evento {

	
	public Evento(String titolo, String descrizione, String regione, String provincia, String comune,
			String indirizzo, Timestamp dataEvento, Timestamp dataPubblicazioneEvento, String pubblicatoreEvento, String srcEvento) throws ParametroIllegaleException {
		if(titolo==null  || titolo.length()==0) throw new ParametroIllegaleException("Il titolo non può essere vuoto!");
		if(descrizione==null  || descrizione.length()==0) throw new ParametroIllegaleException("La descrizione non può essere vuota!");
		if(regione==null  || regione.length()==0) throw new ParametroIllegaleException("La regione non può essere vuota!");
		if(provincia==null || provincia.length()==0) throw new ParametroIllegaleException("La provincia non può essere vuota!");
		if(comune==null  || comune.length()==0) throw new ParametroIllegaleException("Il comune non può essere vuoto!");
		if(indirizzo==null || indirizzo.length()==0) throw new ParametroIllegaleException("L'indirizzo non può essere vuoto!");
		if(dataEvento==null) throw new ParametroIllegaleException("La data dell'evento non può essere vuota!");
		if(pubblicatoreEvento==null || pubblicatoreEvento.length()==0) throw new ParametroIllegaleException("Il pubblicatore dell'evento non può essere vuoto!");
		if(srcEvento==null || srcEvento.length()==0) throw new ParametroIllegaleException("L'immagine dell'evento non può essere vuota!");		
		
		this.titolo=titolo;
		this.descrizione=descrizione;
		this.regione=regione;
		this.provincia=provincia;
		this.comune=comune;
		this.indirizzo=indirizzo;
		this.dataEvento=dataEvento;
		this.dataPubblicazioneEvento=dataPubblicazioneEvento;
		this.pubblicatoreEvento=pubblicatoreEvento;
		this.srcEvento=srcEvento;
	}

	
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getComune() {
		return comune;
	}
	public void setComune(String comune) {
		this.comune = comune;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public String getPubblicatoreEvento() {
		return pubblicatoreEvento;
	}
	public void setPubblicatoreEvento(String pubblicatoreEvento) {
		this.pubblicatoreEvento = pubblicatoreEvento;
	}
	public String getRegione() {
		return regione;
	}
	public void setRegione(String regione) {
		this.regione = regione;
	}
	public Timestamp getDataEvento() {
		return dataEvento;
	}
	public void setDataEvento(Timestamp dataEvento) {
		this.dataEvento = dataEvento;
	}
	public Timestamp getDataPubblicazioneEvento() {
		return dataPubblicazioneEvento;
	}
	public void setDataPubblicazioneEvento(Timestamp dataPubblicazioneEvento) {
		this.dataPubblicazioneEvento = dataPubblicazioneEvento;
	}


	public String getSrcEvento() {
		return srcEvento;
	}


	public void setSrcEvento(String srcEvento) {
		this.srcEvento = srcEvento;
	}





	private String titolo,descrizione,provincia,comune,indirizzo,pubblicatoreEvento,regione,srcEvento;
    private Timestamp dataEvento,dataPubblicazioneEvento;
}
