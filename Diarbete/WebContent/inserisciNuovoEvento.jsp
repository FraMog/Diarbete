<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="javascript/eventi/validaInserimentoNuovoEvento.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Eventi</title>
</head>

<body>
	<header>
		<%@include file="jspIncluse/header.jsp" %>
	</header>
 
 	<script>
		$(document).ready(function(){
			$('#homeMenuNavigazionale').removeClass("active");
			$('#eventiMenuNavigazionale').addClass("active");
		})
	 </script>

    <%@include file="jspIncluse/menuNavigazionale.jsp"%>







<section class="row">
<%-- Il form di inserimento --%>
<div class="row">
    	<div class="col-xs-12 col-md-10 col-md-offset-1">
      	<form id="inserisciNuovoEvento" class="form-horizontal" action="InserisciEvento" method="POST">
    <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Titolo evento</label>
        <div class="col-xs-12 col-md-10">
            <input name="titolo" pattern=".{1,100}" required title="Il titolo deve avere lunghezza 1-100" class="form-control" id="titoloEvento" placeholder="Inserisci il titolo della discussione" type="text" >
            <h6 class="pull-right" id="count_message_title"></h6>
        </div>
    </div>
          
          <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Descrizione</label>
        <div class="col-xs-12 col-md-10">
    	<textarea maxlength="1024" name="descrizione" class="form-control" id="descrizioneEvento" placeholder="Inserisci qui la descrizione dell'evento"></textarea>
          <h6 class="pull-right" id="count_message_descrizione"></h6>
          </div>
            </div>          
    		
    		   
          <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Regione</label>
        <div class="col-xs-12 col-md-10">
         <select name="regione">
  			<option value="Abruzzo">Abruzzo</option>
            <option value="Basilicata">Basilicata</option>
            <option value="Calabria">Calabria</option>
                        <option value="Campania">Campania</option>
                        <option value="Emilia-Romagna">Emilia-Romagna</option>
                        <option value="Friuli-Venezia Giulia">Friuli-Venezia Giulia</option>
                        <option value="Lazio">Lazio</option>
                        <option value="Liguria">Liguria</option>
                        <option value="Lombardia">Lombardia</option>
                        <option value="Marche">Marche</option>
                        <option value="Molise">Molise</option>
                        <option value="Piemonte">Piemonte</option>
                        <option value="Puglia">Puglia</option>
                        <option value="Sardegna">Sardegna</option>
                        <option value="Sicilia">Sicilia</option>
                        <option value="Toscana">Toscana</option>
                        <option value="Trentino-Alto Adige">Trentino-Alto Adige</option>
                        <option value="Umbria">Umbria</option>
                        <option value="Valle d'Aosta">Valle d'Aosta</option>
                        <option value="Veneto">Veneto</option>
</select> 
          </div>
            </div>          
    		
    		
    			 <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Provincia</label>
        <div class="col-xs-12 col-md-10">
          <input name="provincia" pattern=".{1,100}" required title="La provincia deve avere lunghezza 1-100" class="form-control" id="provinciaEvento" placeholder="Inserisci la provincia dell'evento" type="text">
          <h6 class="pull-right" id="count_message_provincia"></h6>
          </div>
            </div>          
    		
    		
    		 <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Comune</label>
        <div class="col-xs-12 col-md-10">
          <input name="comune" pattern=".{1,100}" required title="Il comune deve avere lunghezza 1-100" class="form-control" id="comuneEvento" placeholder="Inserisci il comune dell'evento" type="text">
          <h6 class="pull-right" id="count_message_comune"></h6>
          </div>
            </div>          
    		
    		
    	  <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Indirizzo</label>
        <div class="col-xs-12 col-md-10">
        <input name="indirizzo" pattern=".{1,256}" required title="L'indirizzo deve avere lunghezza 1-256" class="form-control" id="indirizzoEvento" placeholder="Inserisci l'indirzzo dell'evento con via, e numero civico" type="text">
           <h6 class="pull-right" id="count_message_indirizzo"></h6>
          </div>
            </div>          
   
    <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Data Evento</label>
        <div class="col-xs-12 col-md-10">
        <input style="min-width:400px;" type="datetime-local" name="data" id="dataEvento" step="1" placeholder="Inserisci una data valida nel formato yyyy-mm-ddThh:mm:ss">
          </div>
            </div>       
   
   
     <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Immagine evento</label>
        <div class="col-xs-12 col-md-10">
       <div class="col-sm-6"><input class="form-control" type="file" name="foto" id="foto" required/></div>
          </div>
            </div>        
   

    <div class="alert alert-danger fade in" id="alertErroreInserimentoNuovoEvento" style="display:none;">
        <a  href="#" class="close" onclick="document.getElementById('alertErroreInserimentoNuovoEvento').style.display='none'">&times;</a>
        <p id="alertErroreInserimentoNuovoEventoTesto"></p>
    </div>

       <div class="form-group">
        <div class="col-xs-offset-6">
            <button type="button" onclick="validaInserimentoNuovoEvento()" class="btn btn-primary">Invia</button>
        </div>
    </div>
</form>

<script>
$("document").ready(function(){
	inizializzaValoriMassimaliInput();
});	
</script>


      </div>
  </div>
  
  <%-- Fine form di inserimento --%>
  </section>
<%@ include file="jspIncluse/modalFineOperazione.jsp" %>

<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>