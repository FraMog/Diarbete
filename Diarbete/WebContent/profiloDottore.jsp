<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Profilo</title>
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
    <section class="row">
        <div class="card col-xs-12" style="margin-top: 30px">
            <!-- INSERIRE IMMAGINE DOTTORE -->
            <div style="height: 230px">
                <div style="float: left;">
                    <img class="img-responsive" src="${dottore.src}" style="width: 200px; margin-left: 10px" />
                </div>
                <div style="float: left; margin-left: 10px">
                    <!-- INSERIRE NOME DOTTORE -->
                    <div>
                        <h4>${dottore.nome} ${dottore.cognome}</h4>
                    </div>
                    <!-- INSERIRE SPECIALIZZAZIONE -->
                    <div>
                        <p>
                            <b>Specializzazione: ${dottore.specializzazione}</b>
                        </p>
                    </div>
                    <!-- INSERIRE AMBITO -->
                    <div>
                        <p>
                            <b>Ambito: ${dottore.ambito}</b>
                        </p>
                    </div>
                </div>
            </div>
            <!-- INSERIRE FRAME MAPPA  -->
            <div class="panel panel-info" style="float: left; height: 300px; width: 100%;">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> ${dottore.indirizzo}
                </div>
                <div class="panel-body">
                    <iframe width="100%" height="230px" frameborder="0" style="border: 0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDoSwVvCAM_pT2dLFIRtLolHOy59ouWjCk&q=${dottore.indirizzo}" allowfullscreen> </iframe>
                </div>
            </div>
            <!-- INSERIRE descrizione  -->
            <div class="panel panel-info" style="float: left; height: auto; width: 100%;">
                <div class="panel-heading">Breve Descrizione Curriculum</div>
                <div class="panel-body">${dottore.curriculum}</div>
            </div>
        </div>
    </section>
    <div style="clear: both"></div>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
