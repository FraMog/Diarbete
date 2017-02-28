<!DOCTYPE html>
<%@page import="registrazione.Paziente"%>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Paziente</title>
<style type="text/css">
	
	#imgPaziente img{
		height:150px;
	}

</style>
</head>
<body>
    <header>
        <%@include file="jspIncluse/header.jsp"%>
    </header>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="col-xs-8 col-xs-offset-4" style="margin-top:15px;">
        	<div class="prima_parte">
        		<div>
        			<img style="height:126px" class="col-xs-3 img-responsive" id="imgPaziente" src="${paziente.src}" alt="img" title="img">
        		</div>
        		<div id="parte_destra">
        			<p style="font-weight: bold; font-size:20px;">${paziente.cognome} ${paziente.nome} </p>
        			<p>${paziente.data}</p>
        			<p>${paziente.indirizzo}</p>
        			<p>Tipologia Diabete: <% if(((Paziente)session.getAttribute("paziente")).getTipoDiabete()==1)
        				{
        				%>A<%} else{ %>B<%	}
        				%></p>
        		</div>
        	</div>
        </div>
        <div class="col-xs-4 col-xs-offset-4" style=" border-radius: 10px; height:auto; margin-top:30px; border:1px solid black; padding: 10px;"> 
        		<p style="font-size:16px;">Breve descrizione</p>
        		<p>${paziente.descrizione}</p>
        </div>
            <div style="clear: both; margin-top: 73px"></div>
        
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
