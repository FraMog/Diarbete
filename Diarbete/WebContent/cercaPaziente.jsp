<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Pazienti</title>
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
        	<div id="custom-search-input">
                <div class="input-group col-md-12" style="height: 10px;">
                    <input type="text" class="form-control input-sm" placeholder="Cerca Paziente" /> <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="submit" onclick="">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
            
            <div class="col-sm-10" style="border:1px solid black; height:auto; margin-top:25px; border-radius:5px; padding-bottom:5px;">
            	<div class="paziente col-sm-12" style="margin-top:20px; border-bottom: 1px solid black;">
	        		<div>
	        			<img style="height:126px" class="col-xs-3 img-responsive" id="imgPaziente" src="img/pazienti/paziente1.jpg" alt="img" title="img">
	        		</div>
	        		<div id="parte_destra">
	        			<p style="font-weight: bold; font-size:20px;">Nome Cognome</p>
	        			<p>Data</p>
	        			<p>Via</p>
	        			<p>Tipologia Diabete: A</p>
	        		</div>
	        		<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Visualizza Profilo</button></p>
        		</div>
        		<div class="paziente col-sm-12" style="margin-top:20px; border-bottom: 1px solid black;">
	        		<div>
	        			<img style="height:126px" class="col-xs-3 img-responsive" id="imgPaziente" src="img/pazienti/paziente1.jpg" alt="img" title="img">
	        		</div>
	        		<div id="parte_destra">
	        			<p style="font-weight: bold; font-size:20px;">Nome Cognome</p>
	        			<p>Data</p>
	        			<p>Via</p>
	        			<p>Tipologia Diabete: A</p>
	        		</div>
	        		<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Visualizza Profilo</button></p>
        		</div>
        		<div class="paziente col-sm-12" style="margin-top:20px; border-bottom: 1px solid black;">
	        		<div>
	        			<img style="height:126px" class="col-xs-3 img-responsive" id="imgPaziente" src="img/pazienti/paziente1.jpg" alt="img" title="img">
	        		</div>
	        		<div id="parte_destra">
	        			<p style="font-weight: bold; font-size:20px;">Nome Cognome</p>
	        			<p>Data</p>
	        			<p>Via</p>
	        			<p>Tipologia Diabete: A</p>
	        		</div>
	        		<p><button type="button" class="btn btn-primary" style="margin-top:10px;">Visualizza Profilo</button></p>
        		</div>
        	</div>
            </div>
        </div>
            <div style="clear: both; margin-top: 73px"></div>
        
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
