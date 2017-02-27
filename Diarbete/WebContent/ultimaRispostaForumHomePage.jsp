<%@page import="forum.Topic, forum.Risposta"%>
<%
	Topic ultimoTopicRisposto = (Topic) request.getAttribute("ultimoTopicRisposto");
%>
<%
	if (ultimoTopicRisposto != null) {
%>
<img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
<div class="card-block">
    <h4 class="card-title center-block"><%=ultimoTopicRisposto.getTitolo()%></h4>
    <%
    	Risposta ultimaRisposta = ultimoTopicRisposto.getRisposteAlTopic().get(0);
    %>
    <p class="card-text"><%=ultimaRisposta.getBody()%></p>
    <a class="pull-right" href="VisualizzaPostForum?titolo=<%=ultimoTopicRisposto.getTitolo()%>&dataPubblicazioneTopic=<%=ultimoTopicRisposto.getDataInserimento().toString()%>">Per saperne di più--></a>
    <div class="row"></div>
</div>
<div class="card-footer">
    <small class="text-muted">Risposto il <%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(ultimaRisposta.getDataInserimento())%> alle <%=new java.text.SimpleDateFormat("HH:mm:ss").format(ultimaRisposta.getDataInserimento())
						.substring(0, 8)%> da <b><%=ultimaRisposta.getAutoreRisposta()%></b></small>
</div>
<%
	} else {
%>
<img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
<div class="card-block">
    <h4 class="card-title center-block"></h4>
    <p class="card-text">Non c'è nessun post nel forum attualmente.</p>
</div>
<div class="card-footer">
    <small class="text-muted"></small>
</div>
<%
	}
%>