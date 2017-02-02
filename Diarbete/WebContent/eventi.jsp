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
<title>Home Page</title>

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

<div class="card-group">
  <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
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

</section>




	<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>