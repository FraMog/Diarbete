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
	<script src="javascript/forum/cancellaTopic.js"></script>
	<script src="javascript/forum/cercaPerTitolo.js"></script>
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
    <ol class="breadcrumb pull-right where-am-i">
      <li><a href="forum.jsp">Forum</a></li>
      <li class="active"><%=request.getParameter("titoloPostdaCercare") %></li>
    </ol>
    <div class="clearfix"></div>
  </div>
  <p class="lead">Risultati ricerca per titolo <b><%=request.getParameter("titoloPostdaCercare") %></b> </p>


 <div id="topicContainer">
 </div>
 
 <div id="show_paginator" class="pull-right"></div>
 
</div>
</section>

<%@include file="jspIncluse/modalCancellazione.jsp" %>
<%@include file="jspIncluse/modalFineOperazione.jsp" %>
<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

<script>
 cercaPerTitolo(1, '<%=request.getParameter("titoloPostdaCercare")%>');
</script>

<script>
		$(document).ready(function(){
			inserisciPaginatorInRisultatiRicerca(1, '<%=request.getParameter("titoloPostdaCercare")%>');
		});
		
</script>


</body>
</html>