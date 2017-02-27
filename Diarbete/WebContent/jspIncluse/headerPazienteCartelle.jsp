<script>
	function lancia() {
		localStorage.farmacia = document.getElementById('farmacia').value;
		open("../farmacia.jsp", "_self");
	}
</script>
<div class="col-md-4"></div>
<!-- L'header contiene il logo, il form di ricerca delle farmacie, e l'icona del login -->
<div class="col-md-4" id="logoContainer">
    <img src="../img/logo.png">
</div>
<div class="col-md-3 col-md-offset-1" style="margin-top: 50px; font-size: 20px; ">
    <div class="row">
        <img class="col-xs-3 img-responsive" src="https://cdn4.iconfinder.com/data/icons/pictype-free-vector-icons/16/home-512.png" width="40px" height="40px" />   
        <img class="col-xs-3 img-responsive" src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" width="40px" height="40px" /> 
        <img class="col-xs-3 img-responsive" src="http://www.freeiconspng.com/uploads/message-icon-png-14.png" width="40px" height="40px" /> 
        <img class="col-xs-3 img-responsive" src="http://wfarm1.dataknet.com/static/resources/icons/set112/f4f80fc6.png" width="40px" height="40px" />
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