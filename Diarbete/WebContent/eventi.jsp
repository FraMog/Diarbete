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
	<script src="javascript/eventi/mostraPaginaEventi.js"></script>
	<script src="javascript/eventi/inserisciPaginator.js"></script>
	<script src="javascript/eventi/modificaPaginator.js"></script>
	<script src="javascript/eventi/cancellaEvento.js"></script>
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
  				<li class="active"><a href="eventi.jsp">Eventi</a></li>
		</ol>
		</article>
</article>


<div class="text-center">
 <a href="inserisciNuovoEvento.jsp" class="btn btn-primary">Pubblica nuovo evento</a>
</div>

<div id="eventiContainer" style="padding-top:20px;">
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