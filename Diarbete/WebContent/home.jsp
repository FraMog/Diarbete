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
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Titolo ultimo consiglio</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato il 29-01-2017 alle ore 12:25</small>
    </div>
  </div>
  <div class="card col-xs-12 col-sm-4" id="ultimoEventoInserito">
    
  </div>
  <div class="card col-xs-12 col-sm-4" id="ultimaRispostaPost">

  </div>
</div>

</section>

<%--Carico al momento del caricamento della pagina l'ultimo post risposto nel forum --%>
<script>

	$.ajax({type:"POST",
		url: "MostraUltimoTopicRisposto",
		success: function(risposta){ //se la richiesta ha successo
			$('#ultimaRispostaPost').html(risposta);
		},
		error: function (response) { //se la richiesta fallisce
			$('#ultimaRispostaPost').html(risposta);
	    }
	});
	
	$.ajax({type:"POST",
		url: "MostraUltimoEventoInserito",
		success: function(risposta){ //se la richiesta ha successo
			$('#ultimoEventoInserito').html(risposta);
		},
		error: function (response) { //se la richiesta fallisce
			$('#ultimoEventoInserito').html(risposta);
	    }
	});


</script>


	<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>



