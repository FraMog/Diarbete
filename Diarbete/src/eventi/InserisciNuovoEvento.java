package eventi;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import eccezioni.ParametroIllegaleException;

@WebServlet("/InserisciNuovoEvento")
@MultipartConfig
public class InserisciNuovoEvento extends HttpServlet {

	private static final long serialVersionUID = 1L;
    private String path;
	
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String dataEventoString=req.getParameter("data");
		dataEventoString=dataEventoString.substring(0, 10) + " " + dataEventoString.substring(11,19);
		System.out.println(dataEventoString);
		try {
			Timestamp dataEvento=Timestamp.valueOf(dataEventoString);
		    Timestamp dataInserimentoAnnuncio= new Timestamp(System.currentTimeMillis());
		    String pathFoto=verificaFile(req, dataInserimentoAnnuncio);
			Evento evento= new Evento(req.getParameter("titolo"),req.getParameter("descrizione"),
					req.getParameter("regione"), req.getParameter("provincia"),
					req.getParameter("comune"), req.getParameter("indirizzo"),
					dataEvento, new Timestamp(System.currentTimeMillis()), 
					"dottore@utente.it",pathFoto);
			if(!(new EventoDAO().inserisciEvento(evento))){
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Non è stato possibile inserire l'evento a causa di un errore interno del server. Riprovare più tardi");
				return;
			}
			saveFile(req,pathFoto);
			resp.setStatus(HttpServletResponse.SC_OK);
		} catch (ServletException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Si sono verificati problemi nel salvataggio dell'immagine. Riprovare più tardi");
			return;
		}
		catch (ParametroIllegaleException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
			return;
		}
		catch (IllegalArgumentException e) {
			e.printStackTrace();
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Immettere una data valida");
			return;
		}
	}

	private String verificaFile(HttpServletRequest request, Timestamp dataInserimentoAnnuncio) throws ParametroIllegaleException, IOException, ServletException {
		final Part filePart = request.getPart("foto");
		if(filePart==null || "".equals(filePart.getSubmittedFileName().trim())) //verifica se l'immagine è stata inserita
			return null; //se non è stata inserita restituisco null
		String ext=filePart.getContentType();
		if(!(ext.equals("image/jpeg")||ext.equals("image/png")||ext.equals("image/gif")||ext.equals("image/jpg"))) //verifica sull'estensione del file
			throw new ParametroIllegaleException("L'estensione del file non è riconosciuta dal server");
		if(filePart.getSize()>10*1024*1024) //verifica dimensione
			throw new ParametroIllegaleException("Le dimensioni del file superano i 10MB");
		 //path in cui salvare l'immagine
		String fileName = request.getParameter("titolo")+"_"+dataInserimentoAnnuncio.toString().replaceAll("\\s+","").replace(":","")+"_"+filePart.getSubmittedFileName(); //nome file da salvare
		return fileName; //restituisco il nome del file
	}

	private void saveFile(HttpServletRequest request, String pathFoto) throws ServletException, IOException, FileNotFoundException {
		final Part filePart = request.getPart("foto");
		OutputStream out = null;
		InputStream filecontent = null;
		path=this.getServletContext().getRealPath("")+"img"+File.separator+"eventi";
		try {
			out = new FileOutputStream(new File(path + File.separator + pathFoto)); //apro lo stream sul file al percorso stabilito
			filecontent = filePart.getInputStream();
			int read = 0;
			final byte[] bytes = new byte[1024];
			while ((read = filecontent.read(bytes)) != -1) { //copio il file inserito nel file creato
				out.write(bytes, 0, read);
			}
		} 
		finally {
			if (out != null) {
				out.close();
			}
			if (filecontent != null) {
				filecontent.close();
			}
		}
	}
}
