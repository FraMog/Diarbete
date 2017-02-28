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
                    <img class="img-responsive" src="img/homedottore/pazienti.jpg" style="width: 200px; margin-left: 10px" />
                </div>
                <div style="float: left; margin-left: 10px">
                    <!-- INSERIRE NOME DOTTORE -->
                    <div>
                        <h4>Nome Cognome</h4>
                    </div>
                    <!-- INSERIRE SPECIALIZZAZIONE -->
                    <div>
                        <p>
                            <b>Specializzazione:</b>
                        </p>
                    </div>
                    <!-- INSERIRE AMBITO -->
                    <div>
                        <p>
                            <b>Ambito:</b>
                        </p>
                    </div>
                </div>
            </div>
            <!-- INSERIRE FRAME MAPPA  -->
            <div class="panel panel-info" style="float: left; height: 300px; width: 100%;">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Ospedale Sandro Pertini
                </div>
                <div class="panel-body">
                    <iframe width="100%" height="230px" frameborder="0" style="border: 0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDoSwVvCAM_pT2dLFIRtLolHOy59ouWjCk&q=Sandro+pertini+ospedale" allowfullscreen> </iframe>
                </div>
            </div>
            <!-- INSERIRE descrizione  -->
            <div class="panel panel-info" style="float: left; height: 100px; width: 100%;">
                <div class="panel-heading">Breve Descrizione Curriculum</div>
                <div class="panel-body">Il dottore ha studiatoo---......................</div>
            </div>
        </div>
    </section>
    <div style="clear: both"></div>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
</body>
</html>
