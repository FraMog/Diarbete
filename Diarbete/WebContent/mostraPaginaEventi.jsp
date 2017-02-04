<%@page
	import="eventi.Evento, java.util.ArrayList, java.util.HashMap"%>
<%HashMap<String, Object> map = (HashMap<String, Object>) request.getAttribute("hashMap"); %>	
<% int numeroEventiTotali= (Integer) map.get("numeroEventiTotali"); %>
<% ArrayList <Evento> eventiDaMostrare = (ArrayList <Evento>)map.get("eventiDaMostrare"); %>
<%if (numeroEventiTotali>0 && eventiDaMostrare!=null){%>
<%for (int i=0; i<eventiDaMostrare.size();i++){%>
   <div style="border: 1px solid #ccc;" id="containerItemElencoEventi" class="col-xs-12 col-sm-4">
   <div>
    <a class="col-xs-12" data-toggle="modal" href="#modalCancellazione" onclick="cancellaEvento('<%=eventiDaMostrare.get(i).getTitolo()%>','<%=eventiDaMostrare.get(i).getDataPubblicazioneEvento().toString()%>')">
				    <i class="glyphicon glyphicon-remove pull-right" style="font-size:25px;"></i></a>
	<img class="card-img-top center-block" src="img/eventi/<%=eventiDaMostrare.get(i).getSrcEvento()%>" alt="Card image cap">
    </div>   
    <div class="card-block">
      <h4 class="card-title center-block"><%=eventiDaMostrare.get(i).getTitolo()%></h4>
      <small class="text-muted">Evento del <b><%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(eventiDaMostrare.get(i).getDataEvento())%></b> alle ore <b><%= new java.text.SimpleDateFormat("HH:mm:ss").format(eventiDaMostrare.get(i).getDataEvento()).substring(0,8)%></b> a <b><%=eventiDaMostrare.get(i).getComune()%>, <%=eventiDaMostrare.get(i).getProvincia()%>, <%=eventiDaMostrare.get(i).getRegione()%></b></small>
      <small class="text-muted row">In via <b><%=eventiDaMostrare.get(i).getIndirizzo()%></b></small>
      <%if(eventiDaMostrare.get(i).getDescrizione().length()<=256){%>
      	 <p class="card-text"><%=eventiDaMostrare.get(i).getDescrizione()%></p>
      <%}else{ %>
     	 <p class="card-text"><%=eventiDaMostrare.get(i).getDescrizione().substring(0, 256)%></p>
      <%} %>
       <a class="pull-right" href="VisualizzaEvento?titolo=<%=eventiDaMostrare.get(i).getTitolo()%>&dataPubblicazioneEvento=<%=eventiDaMostrare.get(i).getDataPubblicazioneEvento().toString()%>">Per saperne di più--></a>
    	<div class="row"></div>
    </div>
    <div class="card-footer">
      <small class="text-muted">Pubblicato <%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(eventiDaMostrare.get(i).getDataPubblicazioneEvento())%> alle <%= new java.text.SimpleDateFormat("HH:mm:ss").format(eventiDaMostrare.get(i).getDataPubblicazioneEvento()).substring(0,8)%></small>
    </div>
    </div>
    <%} %>
       <div class="col-xs-12 pull-right" id="divMostraNumeroEventiPresenti" style="text-align:right;"><h4>Eventi totali presenti: <b id="numeroTotaleEventiPresenti"><%=numeroEventiTotali%></b></h4></div>
		<script>
		$(document).ready(function(){
			modificaPaginator();
		});
		</script>
<%} else {%>  <h4 style="text-align:center;">Non ci sono topic attualmente presenti nel forum</h4>
<%}%>