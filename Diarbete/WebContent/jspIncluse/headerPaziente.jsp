<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("farmacia.jsp", "_self");
	}
	
	function logout() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				open("home.jsp", "_self");
			}
		};
		xhttp.open("POST", "ServletLogout", true);
		xhttp.send();
	}
</script>
<div class="col-md-4"></div>
<!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
<div class="col-md-4" id="logoContainer">
    <img src="img/logo.png">
</div>
<div class="col-md-3 col-md-offset-1" style="margin-top: 50px; font-size: 20px; ">
    <div class="row">   
    <span class="col-xs-3"></span>
        <img class="col-xs-3 img-responsive" onclick="window.open('homePaziente.jsp','_self')" src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" width="40px" height="40px" /> 
        <img class="col-xs-3 img-responsive" onclick="window.open('diario.jsp','_self')" src="https://cdn3.iconfinder.com/data/icons/solid-locations-icon-set/64/LIBRARY_2-64.png" width="40px" height="40px" /> 
        <img onclick="logout()" class="col-xs-3 img-responsive" src="http://wfarm1.dataknet.com/static/resources/icons/set112/f4f80fc6.png" width="40px" height="40px" />
    </div>
     <div class="row" style="margin-top: 10px;"><b><span id="benvenuto"></span></b></div>
</div>
<div class="row">
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