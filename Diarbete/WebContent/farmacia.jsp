<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Registrazione</title>
</head>
<body>
    <header>
        <%
        	if (session.getAttribute("paziente") == null) {
        %>
        <%@include file="jspIncluse/header.jsp"%>
        <%
        	} else {
        %>
        <%@include file="jspIncluse/headerPaziente.jsp"%>
        <%
        	}
        %>
    </header>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="panel panel-primary">
                <div id="nomeFarmacia" class="panel-heading text-center">Farmacie nei dintorni di</div>
                <div class="panel-body">
                    <iframe id="iframe" width="100%" height="500px" frameborder="0" style="border: 0" allowfullscreen> </iframe>
                </div>
            </div>
        </div>
    </section>
    <div style="clear: both; margin-top: 73px"></div>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
    <script>
    
    var farma_qui = localStorage.getItem("farmacia_qui");
    var sei_qui = localStorage.getItem("sei_qui");
    if (sei_qui=="si")
    {
    	document.getElementById("nomeFarmacia").innerHTML = "Farmacie nei dintorni di "
			+ farma_qui;
		document.getElementById('iframe').src = "https://www.google.com/maps/embed/v1/place?key=AIzaSyDoSwVvCAM_pT2dLFIRtLolHOy59ouWjCk&q=farmacia+vicina+"
			+ farma_qui;
    }
    else
    {
					var luogo = localStorage.getItem("farmacia");
					document.getElementById("nomeFarmacia").innerHTML = "Farmacie nei dintorni di "
							+ luogo;
					document.getElementById('iframe').src = "https://www.google.com/maps/embed/v1/place?key=AIzaSyDoSwVvCAM_pT2dLFIRtLolHOy59ouWjCk&q=farmacia+vicina+"
							+ luogo;
    }
				</script>
</body>
</html>
