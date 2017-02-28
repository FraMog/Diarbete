<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
<script src="javascript/forum/cancellaTopic.js"></script>
<script src="javascript/forum/cercaPerTitolo.js"></script>
<script src="javascript/forum/inserisciPaginator.js"></script>
<script src="javascript/forum/modificaPaginator.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<link rel="stylesheet" href="stile/forum.css">
<title>Forum</title>
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
    <script>
		$(document).ready(function(){
			$('#homeMenuNavigazionale').removeClass("active");
			$('#forumMenuNavigazionale').addClass("active");
		})
	 </script>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="container">
            <div class="page-header page-heading" style="margin: 0px">
                <article class="row clearfix">
                    <article class="col-md-12 column">
                        <ol class="breadcrumb">
                            <li><a href="forum.jsp">Forum</a></li>
                            <li class="active">Risultati Ricerca</li>
                            <li class="active"><%=request.getParameter("titoloPostdaCercare")%></li>
                        </ol>
                    </article>
                </article>
                <div class="clearfix"></div>
            </div>
            <p class="lead">
                Risultati ricerca per titolo <b><%=request.getParameter("titoloPostdaCercare")%></b>
            </p>
            <div id="topicContainer"></div>
            <div id="show_paginator" class="pull-right"></div>
        </div>
    </section>
    <%@include file="jspIncluse/modalCancellazione.jsp"%>
    <%@include file="jspIncluse/modalFineOperazione.jsp"%>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
    <script>
 cercaPerTitolo(1, '<%=request.getParameter("titoloPostdaCercare")%>');
</script>
    <script>
		$(document).ready(function(){
			inserisciPaginatorInRisultatiRicerca(1, '<%=request.getParameter("titoloPostdaCercare")%>
					');
									});
				</script>
</body>
</html>