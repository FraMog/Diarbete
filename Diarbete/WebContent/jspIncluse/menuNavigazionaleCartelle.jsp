<%-- Per cambiare dinamicamente  l'item selezionato eseguire questo codice
 nella propria pagina
 <script>
	$(document).ready(function(){
		$('#homeMenuNavigazionale').removeClass("active");
		$('#myItemMenuNavigazionale').addClass("active");
	})
 </script>
 dove myItemMenuNavigazionale � uno degli item presenti in lista
 --%>
<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse  navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li id="homeMenuNavigazionale" class="active"><a href="../home.jsp">Home</a></li>
				<!-- <li id="consigliMenuNavigazionale"><a>Consigli</a></li>  --> 
				<li id="consigliMenuNavigazionale" class="dropdown">
			        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Consigli
			        	<span class="caret"></span>
			        </a>
			        <ul class="dropdown-menu">
			          <li><a href="../ricette.jsp">Ricette</a></li>
			          <li><a href="../alimentazione.jsp">Alimentazione</a></li>
			        </ul>
			     </li>
				<li id="eventiMenuNavigazionale"><a href="../eventi.jsp">Eventi</a></li>
				<li id="forumMenuNavigazionale"><a href="../forum.jsp">Forum</a></li>
				<li id="contattiMenuNavigazionale"><a href="../contatti.jsp">Contatti</a></li>
			</ul>
		</div>
	</nav>