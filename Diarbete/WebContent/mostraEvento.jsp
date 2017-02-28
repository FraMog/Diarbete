<%@page import="eventi.Evento"%>
<%Evento evento = (Evento) request.getAttribute("eventoDettagliato");%>
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
		$(document).ready(function() {
			$('#homeMenuNavigazionale').removeClass("active");
			$('#eventiMenuNavigazionale').addClass("active");
		})
	</script>


	<section class="row">


		<article class="row clearfix">
			<article class="col-md-12 column">

				<ol class="breadcrumb">
					<li><a href="eventi.jsp">Eventi</a></li>
					<% if (evento != null) {%>
					<li class="active">
						<%out.println(evento.getTitolo());%>
					</li>
					<%}%>
				</ol>
			</article>
		</article>

		<div class="text-center">
		<% if (evento != null) {%>
			<a data-toggle="modal" href="#modalCancellazione" onclick="cancellaEvento('<%=evento.getTitolo()%>','<%=evento.getDataPubblicazioneEvento().toString()%>')" class="btn btn-danger">Elimina Evento</a>
		<%}%>
			 <a href="inserisciNuovoEvento.jsp" class="btn btn-primary">Pubblica nuovo evento</a>
		</div>


		<%if (evento != null) {%>
		<div id="containerHeaderEvento">
			<img class="col-xs-12 col-sm-4 pull-right"
				src="img/eventi/<%=evento.getSrcEvento()%>" alt="Card image cap">
			<div id="infoEventoPrincipali"
				class="col-xs-12 col-sm-7">
				<h1>
					<b><%=evento.getTitolo()%></b>
				</h1>
				<small><h4><%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(evento.getDataEvento())%>
						alle
						<%=new java.text.SimpleDateFormat("HH:mm:ss").format(evento.getDataEvento()).substring(0, 8)%></h4></small>
				<h6><%=evento.getIndirizzo()%></h6>
				<h6><%=evento.getComune()%>,
					<%=evento.getProvincia()%>,
					<%=evento.getRegione()%></h6>
			</div>
		</div>
		<div class="row"></div>
		<div style="padding-left: 15px"
			id="containerDescrizioneEvento">
			<h4><b>Dettagli Evento</b></h4>
			<h6><%=evento.getDescrizione().replace("\n", "<br \\>")%></h6>
		</div>
		<%} else {%>
		<div class="alert alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Errore!</strong>
			Il server non ha potuto trovare i dati relativi all'evento. Questo
			può essere dovuto ad un errore interno oppure ad un url scorretto. Si
			prega di riprovare più tardi.
		</div>


		<%}%>

	</section>




	<footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>

<%@include file="jspIncluse/modalCancellazione.jsp" %>
<%@include file="jspIncluse/modalFineOperazione.jsp" %>
</body>
</html>