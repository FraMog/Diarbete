<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="javascript/forum/validaInserimentoNuovoPost.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<link rel="stylesheet" href="stile/forum.css">
<title>Forum</title>
</head>

<body>
	<header>
		<%@include file="jspIncluse/header.jsp" %>
	</header>
 
 	<script>
		$(document).ready(function(){
			$('#homeMenuNavigazionale').removeClass("active");
			$('#forumMenuNavigazionale').addClass("active");
		})
	 </script>

    <%@include file="jspIncluse/menuNavigazionale.jsp"%>







<section class="row">
<%-- Il form di inserimento --%>
<div class="row">
    	<div class="col-xs-12 col-md-10 col-md-offset-1">
      	<form id="inserisciNuovoPost" class="form-horizontal" action="InserisciTopic" method="POST">
    <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Titolo discussione</label>
        <div class="col-xs-12 col-md-10">
            <input name="titolo" pattern=".{1,100}" required title="Il titolo deve avere lunghezza 1-100" class="form-control" id="titoloPost" placeholder="Inserisci il titolo della discussione" type="text" >
            <h6 class="pull-right" id="count_message_title"></h6>
        </div>
    </div>
          
          <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Argomento</label>
        <div class="col-xs-12 col-md-10">
          <input name="argomento" pattern=".{1,100}" required title="L'argomento deve avere lunghezza 1-100" class="form-control" id="argomentoPost" placeholder="Inserisci l'argomento della discussione" type="text">
          <h6 class="pull-right" id="count_message_argomento"></h6>
          </div>
            </div>          
    		
    		
    	  <div class="form-group">
        <label for="envan" class="control-label col-xs-12 col-sm-2">Domanda/Problema</label>
        <div class="col-xs-12 col-md-10">
          <textarea maxlength="256" name="body" class="form-control" id="bodyPost" placeholder="Inserisci qui la tua domanda/Spiega qui il tuo problema"></textarea>
           <h6 class="pull-right" id="count_message_body"></h6>
          </div>
            </div>          
   
   

    <div class="alert alert-danger fade in" id="alertErroreInserimentoNuovoPost" style="display:none;">
        <a  href="#" class="close" data-dismiss="alert">&times;</a>
        <p id="alertErroreInserimentoNuovoPostTesto"></p>
    </div>

       <div class="form-group">
        <div class="col-xs-offset-6">
            <button type="submit" class="btn btn-primary">Invia</button>
        </div>
    </div>
</form>

<script>
$("document").ready(function(){
	validaInserimentoNuovoPost();
	inizializzaValoriMassimaliInput();
});	
</script>


      </div>
  </div>
  
  <%-- Fine form di inserimento --%>
  </section>


<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>