<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("farmacia.jsp", "_self");
	}
</script>
<div class="col-md-4"></div>
<!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
<div class="col-md-4" id="logoContainer">
    <img src="img/logo.png">
</div>
<div class="col-md-offset-1 col-md-2 col-md-offset-1" style="margin-top: 50px; font-size: 18px; ">
    <div class="row">
        <img class="col-xs-4 img-responsive" src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" width="40px" height="40px" /> 
        <img class="col-xs-4 img-responsive" src="http://www.freeiconspng.com/uploads/message-icon-png-14.png" width="40px" height="40px" /> 
        <img class="col-xs-4 img-responsive" src="http://wfarm1.dataknet.com/static/resources/icons/set112/f4f80fc6.png" width="40px" height="40px" />
    </div>
     <div class="row"><b><span id="benvenuto"></span></b></div>
</div>