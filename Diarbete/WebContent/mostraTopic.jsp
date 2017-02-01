<%@page import="forum.Topic, forum.Risposta, java.util.ArrayList" %>
<%Topic topic= (Topic)request.getAttribute("topicDaMostrare");%>
<%ArrayList<Risposta> risposte= (ArrayList<Risposta>)request.getAttribute("elencoRisposteAlTopic");%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<link rel="stylesheet" href="stile/forum.css">
<script src="javascript/forum/cancellaTopic.js"></script>
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
<%if (topic!=null && risposte!=null){%>
<%for (int i=0; i<risposte.size();i++){%>
<section class="container">
	<section class="row clearfix">
		<section class="col-md-12 column">
          
          <ol class="breadcrumb">
  				<li><a href="forum.jsp">Forum</a></li>
 				 <li class="active"><%if(i==0){out.println(topic.getTitolo());}%></li>
		</ol>
		</section>
	</section>
	<section class="row clearfix">
		<section class="col-md-12 column">
   
          <div class="row clearfix">
		<div class="col-md-12 column">
			<div class="panel panel-default">
				<div class="panel-heading">
					<section class="panel-title">
                      <time class="pull-right col-xs-3" style="font-size:80%;">
                    Scritto il  <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(risposte.get(i).getDataInserimento())%> alle <%= new java.text.SimpleDateFormat("HH:mm:ss").format(risposte.get(i).getDataInserimento()).substring(0,8)%>
                      </time>
                      <section class="pull-left col-xs-9" id="id">
                         <p style="word-wrap:break-word; font-size:80%;"><i class="fa fa-smile-o"></i> <b><%=topic.getTitolo()%></b></p>
                      </section>
					</section>
				</div>
				<section class="row panel-body">
					<section class="col-md-9">
					<br />
                     <%=risposte.get(i).getBody()%>
                  </section>
                  
                  <section id="user-description" class="col-md-3 ">
                    	<section class="well">
                    <div class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cricle"></i><%=risposte.get(i).getAutoreRisposta()%><span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#"><i class="fa fa-user"></i> Guarda il profilo</a></li>
                      <!-- <li class="divider"></li> -->
                      <li><a href="#"><i class="fa fa-plus"></i>Guarda il diario</a></li>
                    </ul>
       			 </div>
                          <figure>
                            <img class="img-rounded img-responsive" src="http://img2.tgcom24.mediaset.it/images/lapresse/312x176/box/545/C_2_box_21545_upiFoto1F.png" alt="Mohammad Sharifi's avatar">
                            <figcaption class="text-center"><%=risposte.get(i).getTipologiaUtenteCheHaRisposto()%><br><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half"></i> </figcaption>
                          </figure>
                    	</section>
                  </section>
                  
				</section>
				<div class="panel-footer">
                  <div class="row">
					
                  	<section class="col-md-8">
                  	   <%if (i==0){%>
                       <i class="fa fa-edit "></i><a data-toggle="modal" href="#modalCancellazione" onclick="cancellaTopic('<%=topic.getTitolo()%>','<%=topic.getDataInserimento().toString()%>')">Cancella il tuo topic  <i class="glyphicon glyphicon-remove"></i></a>
                    <%}else{%>
                       <i class="fa fa-edit "></i><a data-toggle="modal" href="#modalCancellazione" onclick="cancellaRisposta('<%=topic.getTitolo()%>','<%=topic.getDataInserimento().toString()%>', '<%=risposte.get(i).getDataInserimento().toString()%>')">Cancella la tua risposta <i class="glyphicon glyphicon-remove"></i> </a>
                    <%}%>
                    </section>
				</div>
               </div>
			</div>
		</div>
	</div>
          
          
          
		</section>
	</section>
</section>
<%}}else{%>



    <div class="alert alert-danger fade in">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <strong>Errore!</strong> Il server non ha potuto trovare i dati relativi al topic. Questo pu� essere dovuto ad un errore interno oppure ad un url scorretto. Si prega di riprovare pi� tardi.
    </div>


<%} %>
</section>


<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>


<%@include file="jspIncluse/modalCancellazione.jsp" %>
<%@include file="jspIncluse/modalFineOperazione.jsp" %>


</body>
</html>