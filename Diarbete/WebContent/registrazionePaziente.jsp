<!DOCTYPE html>


<html>
<head>
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1" />
	<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="javascript/reg/registrazione.js"></script>
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
		<div class="col-sm-4 col-sm-offset-4">
			<!--PANEL DATI ANAGRAFICI -->
			<form>
				<div class="panel panel-info">
					<div class="panel-heading">Anagrafici</div>
					<div class="panel-body">

						<div id="divNome" class="form-group">
							<label id="labelNome" for="inputNome">Nome</label> <input
								id="inputNome" class="form-control" name="nome"
								placeholder="Nome" type="text" /> <span id="spanNome"
								style="display: none" class="help-block"></span> <span
								id="iconNome" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

						<div id="divCognome" class="form-group">
							<label id="labelCognome" for="inputCognome">Cognome</label> <input
								id="inputCognome" class="form-control" name="cognome"
								placeholder="Cognome" type="text" /> <span id="spanCognome"
								style="display: none" class="help-block"></span> <span
								id="iconCognome" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>
						
						<div id="divData" class="form-group">
							<label id="labelData" for="inputData">Data di nascita</label> <input
								id="inputData" class="form-control" name="data"
								placeholder="Data" type="date" /> <span id="spanData"
								style="display: none" class="help-block"></span> <span
								id="iconData" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>
						
						<div id="divComune" class="form-group">
							<label id="labelComune" for="inputComune">Comune</label> <input
								id="inputComune" class="form-control" name="comune"
								placeholder="Comune" type="text" /> <span id="spanComune"
								style="display: none" class="help-block"></span> <span
								id="iconComune" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

						<div id="divVia" class="form-group">
							<label id="labelVia" for="inputVia">Via</label> <input
								id="inputVia" class="form-control" name="via" placeholder="Via"
								type="text" /> <span id="spanVia" style="display: none"
								class="help-block"></span> <span id="iconVia"
								style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

						<div id="divCivico" class="form-group">
							<label id="labelCivico" for="inputCivico">Civico</label> <input
								id="inputCivico" class="form-control" name="civico"
								placeholder="Civico" type="text" /> <span id="spanCivico"
								style="display: none" class="help-block"></span> <span
								id="iconCivico" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>
						
						<div id="divTipologia" class="form-group">
							<label id="labelTipologia" for="inputTipologia">Tipologia Diabete (es. A/B)</label> <input
								id="inputTipologia" class="form-control" name="tipologia"
								placeholder="Tipologia" type="text" /> <span id="spanTipologia"
								style="display: none" class="help-block"></span> <span
								id="iconTipologia" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>
						

						<div id="divSrc" class="form-group">
							<label id="labelSrc" for="inputCognome">Src</label> <input
								id="inputSrc" class="form-control" name="src" placeholder="Src"
								type="file" /> <span id="spanSrc" style="display: none"
								class="help-block"></span> <span id="iconSrc"
								style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

					</div>
				</div>

				

				<!--PANEL CREDENZIALI -->
				<div class="panel panel-info">
					<div class="panel-heading">Credenziali</div>
					<div class="panel-body">

						<div id="divEmail" class="form-group">
							<label id="labelEmail" for="inputEmail">Email</label> <input
								id="inputEmail" class="form-control" name="email"
								placeholder="Email" type="text" /> <span id="spanEmail"
								style="display: none" class="help-block"></span> <span
								id="iconEmail" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

						<div id="divUsername" class="form-group">
							<label id="labelUsername" for="inputUsername">Username</label> <input
								id="inputUsername" class="form-control" name="username"
								placeholder="Username" type="text" /> <span id="spanUsername"
								style="display: none" class="help-block"></span> <span
								id="iconUsername" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>

						<div id="divPassword" class="form-group">
							<label id="labelPassword" for="inputPassword">Password</label> <input
								id="inputPassword" class="form-control" name="password"
								placeholder="Password" type="text" /> <span id="spanPassword"
								style="display: none" class="help-block"></span> <span
								id="iconPassword" style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>
					</div>
				</div>

				<!--PANEL CURRICULUM -->
				<div class="panel panel-info">
					<div class="panel-heading">Descrizione Profilo</div>
					<div class="panel-body">

						<div id="divDescrizione" class="form-group">
							<textarea id="textAreaDescrizione" rows="8" cols="48"> Scrivi qui...</textarea>
							<span id="spanDescrizione" style="display: none"
								class="help-block"></span> <span id="iconDescrizione"
								style="display: none"
								class="glyphicon glyphicon-remove form-control-feedback"></span>
						</div>



					</div>
					<input type="button" onclick="javascript:inserisciPaziente()" class="btn btn-primary col-sm-4 col-md-offset-4" value="Registrati" style="margin-top:10px"/>
			</form>
		</div>

	</section>


	<div style="clear: both; margin-top: 73px"></div>
	<footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>

</body>
</html>



