package eventi;


import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eccezioni.ParametroIllegaleException;
import utenti.TipologieUtenti;

@WebServlet("/CancellaEvento")
public class CancellaEvento extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String titoloEventoDaCancellare= req.getParameter("titolo");
        String dataPubblicazioneEvento= req.getParameter("dataPubblicazioneEvento");
        
		EventoDAO eventoDao= new EventoDAO();
		try {
			Evento eventoDaCancellare = new Evento(titoloEventoDaCancellare, Timestamp.valueOf(dataPubblicazioneEvento));
			String srcImmagine=eventoDao.getSrcImmagine(eventoDaCancellare);
			if(srcImmagine==null){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non è stato possibile cancellare l'evento a causa di un errore interno del server. Riprovare più tardi");
				return;
			}
			if(!(eventoDao.cancellaEvento(eventoDaCancellare))){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non è stato possibile cancellare l'evento a causa di un errore interno del server. Riprovare più tardi");
				return;
			}
			cancellaImmagineDaDisco(srcImmagine);
			resp.setStatus(HttpServletResponse.SC_OK);return;
			
		} catch (ParametroIllegaleException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
			return;
		}
		
	}

	private void cancellaImmagineDaDisco(String srcImmagine) {
		String path=this.getServletContext().getRealPath("")+"img"+File.separator+"eventi";
			File deleteFile = new File(path + File.separator + srcImmagine) ;
			// check if the file is present or not
			if( deleteFile.exists())
				deleteFile.delete();
	}

	
}
