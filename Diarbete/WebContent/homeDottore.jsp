<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Home Page</title>
</head>
<body>
    <header class="row">
        <%@include file="jspIncluse/headerDottore.jsp"%>
    </header>
    <section class="row">
        <div class="card-group" style="margin-top: 100px">
            <div class="card col-xs-12 col-sm-4">
                <a href="#"> <img class="card-img-top center-block img-thumbnail" src="img/homedottore/eventi.jpg" alt="eventi"></a>
                <h4 class="card-title">
                    <a href="#">EVENTI</a>
                </h4>
            </div>
            <div class="card col-xs-12 col-sm-4">
                <a href="#"> <img class="card-img-top center-block img-thumbnail" src="img/homedottore/pazienti.jpg" alt="pazienti"></a>
                <h4 class="card-title">
                    <a href="#">PAZIENTI</a>
                </h4>
            </div>
            <div class="card col-xs-12 col-sm-4">
                <a href="#"> <img class="card-img-top center-block img-thumbnail" src="img/homedottore/forum.jpg" alt="forum"></a>
                <h4 class="card-title">
                    <a href="#">FORUM</a>
                </h4>
            </div>
        </div>
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
    <script>
					document.getElementById('benvenuto').innerHTML = "Dott. "
							+ localStorage.nome + " " + localStorage.cognome;
				</script>
</body>
</html>
