<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		localStorage.sei_qui = "no";
		open("farmacia.jsp", "_self");
	}

	function lanciaQui() {
		localStorage.farmacia_qui = "Fisciano";
		localStorage.sei_qui = "si";
		open("farmacia.jsp", "_self");
	}

	function login() {
		var user = document.getElementById("user").value;
		var psw = document.getElementById("psw").value;
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var controllo = xhttp.getResponseHeader("controllo");
				if (controllo == "ok") {
					open("home.jsp","_self");
				} else {
					alert("ERRORE LOGIN");
				}
			}
		};
		xhttp.open("POST", "ServletLogin", true);
		xhttp.setRequestHeader("user", user);
		xhttp.setRequestHeader("psw", psw);

		if (document.getElementById("radioPaziente").checked == true) {
			xhttp.setRequestHeader("tipo", "paziente");
			xhttp.send();
		} else if (document.getElementById("radioDottore").checked == true) {
			xhttp.setRequestHeader("tipo", "dottore");
			xhttp.send();
		}
	}
</script>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" style="padding: 0px">
            <!-- Login -->
            <div class="dropdown-toggle wrapLogin" data-toggle="modal" data-target="#myModal">
                <a class="dropdown-toggle btn btn-primary" style="background-color: white; color: black">Login</a>
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
                                    <input id="user" name="username" type="text" class="form-control" placeholder="e-mail" autofocus required="required">
                                </div>
                                <div class="form-group">
                                    <input id="psw" name="password" type="password" class="form-control" placeholder="password" required="required"><br>
                                </div>
                                <div class="form-group" style="text-align: left">
                                    <label  class="radio-inline"><input id="radioPaziente" type="radio" name="optradio">Paziente</label> <label  class="radio-inline"><input id="radioDottore" type="radio" name="optradio">Dottore</label>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button  class="btn btn-success" data-dismiss="modal" onclick="javascript:login()">Login</button>
                            <button  class="btn btn-danger" data-dismiss="modal">Close</button>
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
                <img src="img/logo.png" />
            </div>
        </div>
    </div>
    <!-- Cerca farmacia -->
    <div class="row">
        <div class="col-md-12" style="padding: 0px">
            <div id="custom-search-input">
                <div class="input-group col-md-12 in-sm" style="height: 10px;">
                    <input type="text" id="farmacia" class="form-control input-sm" placeholder="Cerca farmacia" /> <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="submit" onclick="lanciaQui()">
                            <i class="glyphicon glyphicon-map-marker"></i>
                        </button>
                        <button class="btn btn-info btn-lg" type="submit" onclick="lancia()">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>