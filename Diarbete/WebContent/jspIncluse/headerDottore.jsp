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
<div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" class="wrapLogin" style="right: 150px" width="30px" height="30px" /> <img src="http://www.freeiconspng.com/uploads/message-icon-png-14.png" class="wrapLogin" style="right: 100px" width="30px" height="30px" /> <img src="http://wfarm1.dataknet.com/static/resources/icons/set112/f4f80fc6.png" class="wrapLogin" style="right: 50px" width="30px" height="30px" />
</div>
<div style="width: 100%; text-align: right; margin-right: 50px; font-size: 20px;">
    <b><span id="benvenuto"></span></b>
</div>