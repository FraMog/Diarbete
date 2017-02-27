<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("../farmacia.jsp", "_self");
	}
</script>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" style="padding: 0px">
            <!-- Login -->
            <div class="dropdown-toggle wrapLogin" data-toggle="modal" data-target="#myModal">
                <a href="#" class="dropdown-toggle btn btn-primary" style="background-color: white; color: black">Login</a>
            </div>
            <!-- LOGIN Trigger the modal with a button -->
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
            <!--  REGISTRATI  -->
            <div class="dropdown wrapRegistrati" style="margin-right: 4px">
                <button class="btn btn-primary dropdown-toggle" style="background-color: white; color: black" type="button" data-toggle="dropdown">
                    Registrati <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a target="_self" href="registrazionePaziente.jsp">Paziente</a></li>
                    <li><a target="_self" href="registrazioneDottore.jsp">Dottore</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
    <div class="row">
        <div class="col-md-12">
            <div id="logoContainer">
                <img src="../img/logo.png" />
            </div>
        </div>
    </div>
    <!-- Cerca farmacia -->
    <div class="row">
        <div class="col-md-12" style="padding: 0px">
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