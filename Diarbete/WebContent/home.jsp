<!DOCTYPE html>


<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1"/>
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
	



<section class="row">

<div class="card-group">

<div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block img-responsive" src="img/home/consigli.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Alimentazione per il diabetico</h4>
      <p class="card-text">
      
Una alimentazione ben bilanciata rappresenta la cura essenziale del diabete. Seguire una dieta controllata e sana serve soprattutto a mantenere sotto controllo il livello di zucchero nel sangue, mediante un corretto apporto alimentare di tutti i nutrienti necessari alla salute dell'organismo. 
      </p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div><div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block img-responsive" src="img/home/evento.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Occhio al diabete</h4>
      <p class="card-text">
      Circolo della Stampa - Milano. A che punto siamo sull'assistenza alla persona con Diabete in Lombardia. Farmaci dal nome generico e biosimilari: benefici e  rischi per il diabetico. 
      </p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div><div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block img-responsive" src="img/home/ricette.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Involtini di pollo e zucchine al profumo di menta</h4>
      <p class="card-text">
      
I fagiolini verdi sono una varieta' di fagiolo (Phaseolus vulgaris) in cui tutto il frutto (sia i fagioli sia il baccello che li contiene) viene consumato.   
      </p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>

<div style="clear:both;margin-top:73px">
</div>
	<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>



