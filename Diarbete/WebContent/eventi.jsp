<!DOCTYPE html>


<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1"/>
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	<script src="javascript/eventi/mostraPaginaEventi.js"></script>
	<script src="javascript/eventi/inserisciPaginator.js"></script>
	<script src="javascript/eventi/modificaPaginator.js"></script>
	<script src="javascript/eventi/cancellaEvento.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Eventi</title>

</head>

<body>

	<header>
        <%
        	if (session.getAttribute("paziente") == null) {
        %>
        <%@include file="jspIncluse/header.jsp"%>
        <%
        	} else {
        %>
        <%@include file="jspIncluse/headerPaziente.jsp"%>
        <%
        	}
        %>
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
  				<li class="active"><a href="eventi.jsp">Eventi</a></li>
		</ol>
		</article>
</article>

 <div class="container" id="containerRicerca" style="border: 1px solid #ccc;">
 <div class="col-xs-12 col-sm-6" style="border-right: 1px solid #ccc; border-bottom: 1px solid #ccc;">
    <h4 style="padding-top:20px;" class ="col-xs-12 col-sm-6">Cerca per titolo evento</h4>
    <form action="ricercaEventi.jsp" method="post" id="formRicercaEventoPerTitolo">
 	<div class="col-xs-12 col-sm-6" style="padding-top:20px;">
					<div id="custom-search-input">
						<div class="input-group col-xs-12" style="height: 10px;" >
							<input type="text" name="titoloEventoDaCercare" id="titoloEventoDaCercare" class="form-control input-xs-12"
								placeholder="Inserisci titolo qui" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button" onclick="document.getElementById('formRicercaEventoPerTitolo').submit()">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						
						</div>
					</div>
				</div>
	 </form>		
 </div>
 <div class="col-xs-12 col-sm-6" style="border-bottom: 1px solid #ccc;">
    <h4 style="padding-top:20px;" class ="col-xs-12 col-sm-6">Cerca evento per regione</h4>
    <form action="ricercaEventi.jsp" method="post" id="formRicercaEventoPerRegione">
 	<div class="col-xs-12 col-sm-6" style="padding-top:20px;">
					<div id="custom-search-input">
						<div class="input-group col-xs-12" style="height: 10px;">
							<input type="text" name="regioneEventoDaCercare" id="regioneEventoDaCercare" class="form-control input-xs-12"
								placeholder="Inserisci la regione qui" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button" onclick="document.getElementById('formRicercaEventoPerRegione').submit()">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						
						</div>
					</div>
				</div>
	 </form>		
 </div>
 <div class="col-xs-12 col-sm-6" style="border-right: 1px solid #ccc;">
    <h4 style="padding-top:20px;" class ="col-xs-12 col-sm-6">Cerca evento per provincia</h4>
    <form action="ricercaEventi.jsp" method="post" id="formRicercaEventoPerProvincia">
 	<div class="col-xs-12 col-sm-6" style="padding-top:20px;">
					<div id="custom-search-input">
						<div class="input-group col-xs-12" style="height: 10px;">
							<input type="text" name="provinciaEventoDaCercare" id="provinciaEventoDaCercare" class="form-control input-xs-12"
								placeholder="Inserisci la provincia qui" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button" onclick="document.getElementById('formRicercaEventoPerProvincia').submit()">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						
						</div>
					</div>
				</div>
	 </form>		
 </div>
  <div class="col-xs-12 col-sm-6">
    <h4 style="padding-top:20px;" class ="col-xs-12 col-sm-6">Cerca evento per comune</h4>
    <form action="ricercaEventi.jsp" method="post" id="formRicercaEventoPerComune">
 	<div class="col-xs-12 col-sm-6" style="padding-top:20px;">
					<div id="custom-search-input">
						<div class="input-group col-xs-12" style="height: 10px;">
							<input type="text" name="comuneEventoDaCercare" id="comuneEventoDaCercare" class="form-control input-xs-12"
								placeholder="Inserisci il comune qui" /> <span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button" onclick="document.getElementById('formRicercaEventoPerComune').submit()">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						
						</div>
					</div>
				</div>
	 </form>		
 </div>
 </div>

<div class="row"></div>
<div class="text-center">
 <a style="margin-top:20px;" href="inserisciNuovoEvento.jsp" class="btn btn-primary">Pubblica nuovo evento</a>
</div>

<div id="eventiContainer" style="margin-top:20px;">
 </div>
 
 <div id="show_paginator" class="pull-right"></div>
 
</section>

<%@include file="jspIncluse/modalCancellazione.jsp" %>
<%@include file="jspIncluse/modalFineOperazione.jsp" %>
<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

<script>
	mostraPaginaEventi(1);
</script>

<script>
		$(document).ready(function(){
			inserisciPaginator();
		});
		
</script>

</body>
</html>