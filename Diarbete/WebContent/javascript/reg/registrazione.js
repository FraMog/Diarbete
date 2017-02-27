function inserisciDottore(){

	var email= document.getElementById("inputEmail").value;
	var password= document.getElementById("inputPassword").value;
	var nome= document.getElementById("inputNome").value;
	var cognome= document.getElementById("inputCognome").value;
	var indirizzo= document.getElementById("inputVia").value;
	var src= document.getElementById("inputSrc").value;
	var ambito= document.getElementById("inputAmbito").value;
	var specializzazione= document.getElementById("inputSpecializzazione").value;
	var curriculum= document.getElementById("textAreaCurriculum").value;
	
	
	
		
	$.get("registrazioneServlet", {"email": email,"password":password, "nome":nome,"cognome":cognome,"indirizzo":indirizzo,"src":src,"ambito":ambito,"specializzazione":specializzazione,"curriculum":curriculum},function(valore){
		if(valore=="true") {
		window.location = "home.jsp";
		}
		else{
			alert("Non è possibile registrare l'utente")
		}
	}).fail(function() {
		alert("Non è possibile registrare l'utente")
	});
}

function inserisciPaziente(){

	var email= document.getElementById("inputEmail").value;
	var password= document.getElementById("inputPassword").value;
	var nome= document.getElementById("inputNome").value;
	var cognome= document.getElementById("inputCognome").value;
	var indirizzo= document.getElementById("inputVia").value;
	var src= document.getElementById("inputSrc").value;
	var descrizione= document.getElementById("textAreaDescrizione").value;
	var tipologia= document.getElementById("inputTipologia").value;
	var data= document.getElementById("inputData").value;
	
	
		
	$.get("registrazioneServletPaziente", {"email": email,"password":password, "nome":nome,"cognome":cognome,"indirizzo":indirizzo,"src":src,"descrizione":descrizione,"tipologia":tipologia,"data":data},function(valore){
		if(valore=="true") {
		window.location = "home.jsp";
		}
		else{
			alert("Non è possibile registrare l'utente")
		}
	}).fail(function() {
		alert("Non è possibile registrare l'utente")
	});
}