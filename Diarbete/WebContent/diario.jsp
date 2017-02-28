<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Diario</title>
<style type="text/css">
	


</style>
</head>
<body>
    <header>
        <%@include file="jspIncluse/header.jsp"%>
    </header>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="col-xs-10 col-xs-offset-2" style="margin-top:15px;">
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
        			<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Avanti</button><button type="button" class="btn btn-primary" style="margin-top:5px;">Modifica</button></p>
        			<p></p>
        		</div>
        	</div>
        </div>
            <div style="clear: both; margin-top: 73px"></div>
        
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
