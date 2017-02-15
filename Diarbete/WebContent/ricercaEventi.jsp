<!DOCTYPE html>


<%@page import="eventi.MostraEventiPagina"%>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	<script src="javascript/eventi/cercaEventi.js"></script>
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
  				<li><a href="eventi.jsp">Eventi</a></li>
  				<li class="active">Risultati Ricerca</li>
  				<%if(request.getParameter("titoloEventoDaCercare")!=null){%>
  					<li class="active"><%=request.getParameter("titoloEventoDaCercare")%></li>
  				<%} else if (request.getParameter("regioneEventoDaCercare")!=null){%>
  					<li class="active"><%=request.getParameter("regioneEventoDaCercare")%></li>
  					<%} else if (request.getParameter("provinciaEventoDaCercare")!=null){%>
  					<li class="active"><%=request.getParameter("provinciaEventoDaCercare")%></li>
  					<%} else if (request.getParameter("comuneEventoDaCercare")!=null){%>
  					<li class="active"><%=request.getParameter("comuneEventoDaCercare")%></li>
  					<%} %>
		</ol>
		</article>
</article>

<h3 style="padding-left:15px;" id="introductionRicercaEventi"></h3>
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
<%if(request.getParameter("titoloEventoDaCercare")!=null){%>
	cercaEventi(1,'<%=request.getParameter("titoloEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERTITOLO%>');
<%} else if (request.getParameter("regioneEventoDaCercare")!=null){%>
	cercaEventi(1,'<%=request.getParameter("regioneEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERREGIONE%>');
	<%} else if (request.getParameter("provinciaEventoDaCercare")!=null){%>
	cercaEventi(1,'<%=request.getParameter("provinciaEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERPROVINCIA%>');
	<%} else if (request.getParameter("comuneEventoDaCercare")!=null){%>
	cercaEventi(1, '<%=request.getParameter("comuneEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERCOMUNE%>');
	<%} %>
</script>

<script>
		$(document).ready(function(){
			<%if(request.getParameter("titoloEventoDaCercare")!=null){%>
			inserisciPaginatorInRisultatiRicerca('<%=request.getParameter("titoloEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERTITOLO%>');
		<%} else if (request.getParameter("regioneEventoDaCercare")!=null){%>
			inserisciPaginatorInRisultatiRicerca('<%=request.getParameter("regioneEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERREGIONE%>');
			<%} else if (request.getParameter("provinciaEventoDaCercare")!=null){%>
			inserisciPaginatorInRisultatiRicerca('<%=request.getParameter("provinciaEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERPROVINCIA%>');
			<%} else if (request.getParameter("comuneEventoDaCercare")!=null){%>
			inserisciPaginatorInRisultatiRicerca('<%=request.getParameter("comuneEventoDaCercare")%>','<%=MostraEventiPagina.CERCAPERCOMUNE%>');
			<%} %>
		});
		
</script>

</body>
</html>