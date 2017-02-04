<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	<script src="javascript/forum/mostraPaginaTopic.js"></script>
	<script src="javascript/forum/cancellaTopic.js"></script>
	<script src="javascript/forum/inserisciPaginator.js"></script>
	<script src="javascript/forum/modificaPaginator.js"></script>
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
<div class="container">
  <div class="page-header page-heading" style="margin:0px">
    <article class="row clearfix">
		<article class="col-md-12 column">
          
          <ol class="breadcrumb">
  				<li class="active"><a href="forum.jsp">Forum</a></li>
		</ol>
		</article>
	</article>
    <div class="clearfix"></div>
  </div>
  <p class="lead">Nel <b>forum</b> potrai aprire nuovi topics per permettere ad altri di chiarire i tuoi dubbi.</p>
  <p>Controlla prima, cercando nella sottostante casella di ricerca, se qualche altro utente ha gia avuto il tuo stesso problema ricevendo una risposta soddisfacente, per evitare inutili duplicati.</p>
 

<fieldset class="scheduler-border">
 <legend class="scheduler-border">Form di ricerca</legend>
 <div class="container">
    <h3 class ="col-xs-12 col-sm-3 col-sm-offset-5">Cerca per titolo topic</h3>
    <form action="ricercaTopic.jsp" method="post" id="formRicercaTopic">
 	<div class="col-xs-12 col-sm-3" style="padding-top:20px;">
					<div id="custom-search-input">
						<div class="input-group col-xs-12" style="height: 10px;">
							<input type="text" name="titoloPostdaCercare" id="titoloPostDaCercare" class="form-control input-xs-12"
								placeholder="Inserisci titolo topic" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button" onclick="document.getElementById('formRicercaTopic').submit()">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						
						</div>
					</div>
				</div>
	 </form>		
 </div>
</fieldset>

 <h2 id="introductionTopic" style="text-align:center;">Elenco Topic presenti nel forum</h2>
 <div id="topicContainer">
 </div>
 
 <div id="show_paginator" class="pull-right"></div>
 
</div>
</section>

<%@include file="jspIncluse/modalCancellazione.jsp" %>
<%@include file="jspIncluse/modalFineOperazione.jsp" %>
<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

<script>
	mostraPaginaTopic(1);
</script>

<script>
		$(document).ready(function(){
			inserisciPaginator();
		});
		
</script>


</body>
</html>