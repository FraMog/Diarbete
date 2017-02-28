<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Profilo Utente</title>
<script type="text/javascript">
	
function inviaEmail()
{
	
		var http = new XMLHttpRequest();
		http.onreadystatechange = function()
		{
			if(http.readyState==4 && http.status==200)
			{
				alert("Email inviata");
			}
		}
	http.open("POST", "ServletInviaEmail", true);
	http.setRequestHeader("oggetto",document.getElementById("oggetto").value);
	http.setRequestHeader("commento",document.getElementById("commento").value);
	http.send();
}
	
</script>
</head>
<body>
    <header>
        <%@include file="jspIncluse/header.jsp"%>
    </header>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="col-xs-10 col-xs-offset-2" style="margin-top:15px;">
        <div class="prima_parte ol-xs-7 col-xs-offset-1" style="margin-top:20px; margin-bottom:20px;">
        		<div>
        			<img style="height:126px" class="col-xs-3 img-responsive" id="imgPaziente" src="img/pazienti/paziente1.jpg" alt="img" title="img">
        		</div>
        		<div id="parte_destra">
        			<p style="font-weight: bold; font-size:20px;">Nome Cognome</p>
        			<p>Data</p>
        			<p>Via</p>
        			<p>Tipologia Diabete: A</p>
        		</div>
        </div>
        	<div class="col-xs-7 col-xs-offset-1" style="background:url('img/diary.png') no-repeat;  background-size: 100% 100%; height:400px">
        		<div class="col-xs-3 col-xs-offset-1" style="margin-top:35px;">
        			<p>Mattina</p><input id="mattina" type="text"/ style="margin-bottom:6px;">
        			<p>Pranzo</p><input id="pranzo" type="text" style="margin-bottom:6px;"/>
        			<p>Pomeriggio</p><input id="pom" type="text" style="margin-bottom:6px;"/>
        			<p>Sera</p><input id="sera" type="text" style="margin-bottom:6px;"/>
        			<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Indietro</button></p>
        		</div>
        		<div class="col-xs-3 col-xs-offset-3" style="margin-top:35px;">
        			<p>Mattina</p><input id="mattina" type="text"/ style="margin-bottom:6px;">
        			<p>Pranzo</p><input id="pranzo" type="text" style="margin-bottom:6px;"/>
        			<p>Pomeriggio</p><input id="pom" type="text" style="margin-bottom:6px;"/>
        			<p>Sera</p><input id="sera" type="text" style="margin-bottom:6px;"/>
        			<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Avanti</button></p>
        		</div>
        	</div>
        	<div class="col-xs-7 col-xs-offset-1" style="margin-top:35px;">
	        	<div class="panel panel-info" style="clear:both;">
	                    <div class="panel-heading">Invia Consiglio</div>
		        		<div class="panel-body">
		                        <div id="divOggetto" class="form-group">
		                            <label id="labelOggetto" for="inputProvincia">Oggetto</label> <input id="oggetto" class="form-control" name="oggetto" placeholder="Oggetto" type="text" /> 
		                        </div>
		                        <div class="form-group">
								  <label for="comment">Commenta:</label>
								  <textarea class="form-control" rows="5" id="commento"></textarea>
								</div>
								<button type="button" class="btn btn-primary col-sm-2 col-sm-offset-5" style="margin-top:10px;" onclick="inviaEmail()">Invia</button>
		                 </div>
	             </div>
             </div>
        </div>
            <div style="clear: both; margin-top: 73px"></div>
        
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
