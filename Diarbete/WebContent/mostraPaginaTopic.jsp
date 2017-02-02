<%@page
	import="forum.Topic, forum.Risposta, java.util.ArrayList, java.util.HashMap"%>
<%HashMap<String, Object> map = (HashMap<String, Object>) request.getAttribute("hashMap"); %>	
<% int numeroTopicTotali= (Integer) map.get("numeroTopicTotali"); %>
<% ArrayList <Risposta> topicDaMostrare = (ArrayList <Risposta>)map.get("topicDaMostrare"); %>
<%if (numeroTopicTotali>0 && topicDaMostrare!=null){%>
<table class="table forum table-striped">
	<thead>
		<tr>
			<th class="cell-stat"></th>
			<th>
				<h3 style="display: inline;">Discussioni forum</h3> <a
				href="inserisciNuovoPostNelForum.jsp"><i
					class="glyphicon glyphicon-plus-sign pull-right"></i></a>
			</th>
			<th class="cell-stat text-center hidden-xs hidden-sm">Argomento</th>
			<th class="cell-stat text-center hidden-xs hidden-sm">Risposte</th>
			<th class="cell-stat-2x hidden-xs hidden-sm">Ultima risposta</th>
		</tr>
	</thead>
	<tbody>
		<%for (int i=0;i<topicDaMostrare.size();i++){%>
		<tr>
			<td class="text-center"><i
				class="fa fa-exclamation fa-2x text-danger"></i></td>
			<td>
				<h4 style="display:inline;">
					<a href="VisualizzaPostForum?titolo=<%=topicDaMostrare.get(i).getTopicDiRiferimento().getTitolo()%>&dataPubblicazioneTopic=<%=topicDaMostrare.get(i).getTopicDiRiferimento().getDataInserimento().toString()%>"><%=topicDaMostrare.get(i).getTopicDiRiferimento().getTitolo()%></a><br>
					<small>Pubblicato il <b><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(topicDaMostrare.get(i).getTopicDiRiferimento().getDataInserimento())%></b> alle <b><%= new java.text.SimpleDateFormat("HH:mm:ss").format(topicDaMostrare.get(i).getTopicDiRiferimento().getDataInserimento()).substring(0,8)%> da <b><%=topicDaMostrare.get(i).getTopicDiRiferimento().getAutorePost()%></b></small>
				</h4>
				<a data-toggle="modal" href="#modalCancellazione" onclick="cancellaTopic('<%=topicDaMostrare.get(i).getTopicDiRiferimento().getTitolo()%>','<%=topicDaMostrare.get(i).getTopicDiRiferimento().getDataInserimento().toString()%>')">
				    <i class="glyphicon glyphicon-remove pull-right" style="font-size:25px;"></i></a>
			</td>
			<td class="text-center hidden-xs hidden-sm"><%=topicDaMostrare.get(i).getTopicDiRiferimento().getArgomento()%></td>
			<td class="text-center hidden-xs hidden-sm"><%=topicDaMostrare.get(i).getTopicDiRiferimento().getNumeroDiRisposte()%></td>
			<td class="hidden-xs hidden-sm">by <a href="#"><%=topicDaMostrare.get(i).getAutoreRisposta()%></a><br>
			<small><i class="fa fa-clock-o">il <b><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(topicDaMostrare.get(i).getDataInserimento())%></b> alle <b><%= new java.text.SimpleDateFormat("HH:mm:ss").format(topicDaMostrare.get(i).getDataInserimento()).substring(0,8)%></i></small></td>
		</tr>
		  <%} %>
	</tbody>
</table>
       <div class="col-xs-12 pull-right" id="divMostraNumeroPostNelForum" style="text-align:right;"><h4>Topic presenti nel forum: <b id="numeroTotaleTopic"><%=numeroTopicTotali%></b></h4></div>
		<script>
		$(document).ready(function(){
			modificaPaginator();
		});
		</script>
<%} else {%>  <h4 style="text-align:center;">Non ci sono topic attualmente presenti nel forum</h4>
<%}%>