<%@page import="eventi.Evento" %>
<%Evento evento= (Evento)request.getAttribute("eventoDettagliato");%>
<!DOCTYPE html>


<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Eventi</title>

</head>

<body>

	<header>
		<%@include file="jspIncluse/header.jsp" %>
	</header>

    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
	

 	<script>
		$(document).ready(function(){
			$('#homeMenuNavigazionale').removeClass("active");
			$('#eventiMenuNavigazionale').addClass("active");
		})
	 </script>


<section class="row">


<article class="row clearfix">
		<article class="col-md-12 column">
          
          <ol class="breadcrumb">
  				<li><a href="eventi.jsp">Eventi</a></li>
  				 <%if (evento!=null){ %>
 				 <li class="active"><%out.println(evento.getTitolo());%></li>
 				 <%} %>
		</ol>
		</article>
</article>

<div class="text-center">
 <a href="#" class="btn btn-danger">Elimina Evento</a>
 <a href="inserisciNuovoEvento.jsp" class="btn btn-primary">Pubblica nuovo evento</a>
</div>


<%if (evento!=null){%>
<div class="card-group">
  <div class="card col-xs-12 col-sm-4">
    <div>
    <a class="col-xs-12" data-toggle="modal" href="#modalCancellazione" onclick="alert('click')">
				    <i class="glyphicon glyphicon-remove pull-right" style="font-size:25px;"></i></a>
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    </div>
    <div class="card-block">
      <h4 class="card-title">Titolo ultimo consiglio</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
  <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Titolo ultimo evento</h4>
      <small class="text-muted">Evento del <b>29-01-2017</b> alle ore <b>12:25</b> a <b>Salerno, Campania</b></small>
      <small class="text-muted row">In via <b>Poseidonia 26</b></small>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
   <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Titolo ultimo evento</h4>
      <small class="text-muted">Evento del <b>29-01-2017</b> alle ore <b>12:25</b> a <b>Salerno, Campania</b></small>
      <small class="text-muted row">In via <b>Poseidonia 26</b></small>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
   <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Titolo ultimo evento</h4>
      <small class="text-muted">Evento del <b>29-01-2017</b> alle ore <b>12:25</b> a <b>Salerno, Campania</b></small>
      <small class="text-muted row">In via <b>Poseidonia 26</b></small>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
   <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Titolo ultimo evento</h4>
      <small class="text-muted">Evento del <b>29-01-2017</b> alle ore <b>12:25</b> a <b>Salerno, Campania</b></small>
      <small class="text-muted row">In via <b>Poseidonia 26</b></small>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
   <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Titolo ultimo evento</h4>
      <small class="text-muted">Evento del <b>29-01-2017</b> alle ore <b>12:25</b> a <b>Salerno, Campania</b></small>
      <small class="text-muted row">In via <b>Poseidonia 26</b></small>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>

</div>
<%}else{%>
    <div class="alert alert-danger fade in">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <strong>Errore!</strong> Il server non ha potuto trovare i dati relativi all'evento. Questo può essere dovuto ad un errore interno oppure ad un url scorretto. Si prega di riprovare più tardi.
    </div>


<%} %>

</section>




	<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>