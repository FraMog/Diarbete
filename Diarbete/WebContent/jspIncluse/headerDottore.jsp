<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("farmacia.jsp", "_self");
	}

	function logout() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				open("../home.jsp", "_self");
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
<div class="col-md-2 col-md-offset-2" style="margin-top: 50px; font-size: 18px;">
    <div class="row">
        <span class="col-xs-2"></span> <img class="col-xs-4 img-responsive" src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" width="40px" height="40px" /> <img onclick="javascript:logout()" class="col-xs-4 img-responsive" src="http://wfarm1.dataknet.com/static/resources/icons/set112/f4f80fc6.png" width="40px" height="40px" /> <span class="col-xs-2"></span>
    </div>
    <div class="row">
        <b><span class="col-xs-12" id="benvenuto" style="margin-top: 20px;"></span></b>
    </div>
</div>