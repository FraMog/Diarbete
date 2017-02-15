<!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
<div id="logoContainer">
	<img src="img/logo.png">
</div>



<!-- Login -->
<div class="wrapLogin" class="dropdown-toggle" data-toggle="dropdown">
	<!--<input type="submit" class="btn btn-primary" value="Login" style="background-color:white;color:black" /><input type="submit" class="btn btn-primary" value="Login" style="background-color:white;color:black" />  -->

	<a href="#" class="dropdown-toggle btn btn-primary"
		data-toggle="dropdown" style="background-color:white;color:black">Login<span class="caret"></span></a>

	<div class="dropdown-menu" style="padding: 10px; margin-left: -100px">
		<form class="form">
			<div class="form-group">
				<input name="username" type="text" class="form-control"
					placeholder="e-mail"
					autofocus required="required">
			</div>
			<div class="form-group">
				<input name="password" type="password" class="form-control"
					placeholder="password" required="required"><br>
			</div>


			<input type="submit" class="btn btn-primary" value="Login" />
		</form>
	</div>

</div>





<!-- Cerca farmacia -->
<div class="container">
	<div class="row">

		<div class="col-md-3 col-md-offset-10">
			<div id="custom-search-input">
				<div class="input-group col-md-12 in-sm" style="height: 10px;">
					<input type="text" class="form-control input-sm"
						placeholder="Cerca farmacia" /> <span class="input-group-btn">
						<button class="btn btn-info btn-lg" type="button">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>