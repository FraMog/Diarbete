<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("farmacia.jsp", "_self");
	}
</script>
<!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
<div id="logoContainer">
    <img src="img/logo.png">
</div>
<!-- Registrati -->
<div class="wrapRegistrati" class="dropdown-toggle" data-toggle="dropdown">
    <a href="#" class="dropdown-toggle btn btn-primary" data-toggle="dropdown" style="background-color: white; color: black">Registrati <span class="caret"></span></a>
    <div class="dropdown-menu" style="padding: 10px; margin-left: -100px">
        <input type="submit" onclick="window.open('registrazioneDottore.jsp','_self')" class="btn btn-primary" value="Dottore" /> <input type="submit" onclick="window.open('registrazionePaziente.jsp','_self')" class="btn btn-primary" value="Paziente" />
    </div>
</div>
<!-- Login -->
<div class="wrapLogin" class="dropdown-toggle" data-toggle="modal" data-target="#myModal">
    <a href="#" class="dropdown-toggle btn btn-primary" style="background-color: white; color: black">Login</a>
</div>
<!-- LOGIN Trigger the modal with a button 
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Login</h4>
            </div>
            <div class="modal-body">
                <form class="form">
                    <div class="form-group">
                        <input name="username" type="text" class="form-control" placeholder="e-mail" autofocus required="required">
                    </div>
                    <div class="form-group">
                        <input name="password" type="password" class="form-control" placeholder="password" required="required"><br>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Login</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Cerca farmacia -->
<div class="container">
    <div class="row">
        <div class="col-md-3 col-md-offset-10">
            <div id="custom-search-input">
                <div class="input-group col-md-12 in-sm" style="height: 10px;">
                    <input type="text" id="farmacia" class="form-control input-sm" placeholder="Cerca farmacia" /> <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="submit" onclick="lancia()">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>