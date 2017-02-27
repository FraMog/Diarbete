<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../stile/stile.css">
<title>Alimentazione</title>
<script>

    window.onload = function()
    {
        document.getElementById("header1").innerHTML=localStorage.header1;
        document.getElementById("header2").innerHTML=localStorage.header1;
    	document.getElementById("paragrafo").innerHTML=localStorage.paragrafo;
	}
</script>
</head>
<body>
    <header>
        <%@ include file="../jspIncluse/header.jsp"%>
    </header>
    <%@ include file="../jspIncluse/menuNavigazionaleCartelle.jsp"%>
    <section id="paginaRicette" class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div id="titoloRicette">
                    <ul class="breadcrumb">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="#">Consigli</a></li>
                        <li><a href="../alimentazione.jsp">Alimentazione</a></li>
                        <li class="active" id="header1"></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h1 id="header2"></h1>
                <br />
                <p id="paragrafo" style="text-align: justify"></p>
            </div>
        </div>
    </section>
    <footer class="row">
        <%@ include file="../jspIncluse/footer.jsp"%>
    </footer>
</body>
</html>