<%@page import="eventi.Evento"%>
<%
	Evento ultimoEventoInserito = (Evento) request.getAttribute("ultimoEventoInserito");
%>
<%
	if (ultimoEventoInserito != null) {
%>
<img class="card-img-top center-block" src="img/eventi/<%=ultimoEventoInserito.getSrcEvento()%>" alt="Card image cap">
<div class="card-block">
    <h4 class="card-title center-block"><%=ultimoEventoInserito.getTitolo()%></h4>
    <small class="text-muted">Evento del <b><%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(ultimoEventoInserito.getDataEvento())%></b> alle ore <b><%=new java.text.SimpleDateFormat("HH:mm:ss").format(ultimoEventoInserito.getDataEvento())
						.substring(0, 8)%></b> a <b><%=ultimoEventoInserito.getComune()%>, <%=ultimoEventoInserito.getProvincia()%>, <%=ultimoEventoInserito.getRegione()%></b></small> <small class="text-muted row">In via <b><%=ultimoEventoInserito.getIndirizzo()%></b></small>
    <%
    	if (ultimoEventoInserito.getDescrizione().length() <= 256) {
    %>
    <p class="card-text"><%=ultimoEventoInserito.getDescrizione()%></p>
    <%
    	} else {
    %>
    <p class="card-text"><%=ultimoEventoInserito.getDescrizione().substring(0, 256)%></p>
    <%
    	}
    %>
    <a class="pull-right" href="VisualizzaEvento?titolo=<%=ultimoEventoInserito.getTitolo()%>&dataPubblicazioneEvento=<%=ultimoEventoInserito.getDataPubblicazioneEvento().toString()%>">Per saperne di più--></a>
    <div class="row"></div>
</div>
<div class="card-footer">
    <small class="text-muted">Pubblicato <%=new java.text.SimpleDateFormat("dd-MM-yyyy")
						.format(ultimoEventoInserito.getDataPubblicazioneEvento())%> alle <%=new java.text.SimpleDateFormat("HH:mm:ss")
						.format(ultimoEventoInserito.getDataPubblicazioneEvento()).substring(0, 8)%></small>
</div>
<%
	} else {
%>
<img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
<div class="card-block">
    <h4 class="card-title center-block"></h4>
    <p class="card-text">Non c'è nessun evento nel forum attualmente.</p>
</div>
<div class="card-footer">
    <small class="text-muted"></small>
</div>
<%
	}
%>