<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="stile/stile.css">
    <title>Alimentazione</title>
</head>
<body>
    <header>
        <%@ include file="jspIncluse/header.jsp" %>
    </header>
    <%@ include file="jspIncluse/menuNavigazionale.jsp" %>
      
        <section id="paginaRicette" class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div id="titoloRicette">
                        <ul class="breadcrumb">
                            <li><a href="home.jsp">Home</a>
                            </li>
                            <li><a href="#">Consigli</a>
                            </li>
                            <li class="active">Alimentazione</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Alimentazione del diabetico</h1></a>
                    <br />
                    <p>Una alimentazione ben bilanciata rappresenta la cura essenziale del diabete. Seguire una dieta controllata e sana serve soprattutto a mantenere sotto controllo il livello di zucchero nel sangue, mediante un corretto apporto alimentare di tutti i nutrienti necessari alla salute dell'organismo.</p>
                </div>
            </div>
        </section>
      
        <footer class="row">
            <%@ include file="jspIncluse/footer.jsp" %>
        </footer>
        
</body>
</html>