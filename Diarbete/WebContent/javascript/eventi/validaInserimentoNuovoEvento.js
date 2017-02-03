function validaInserimentoNuovoEvento(){

		var regExpTitolo=new RegExp("^.{1,100}$");
		if(!regExpTitolo.test($("#titoloEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> Il titolo deve avere lunghezza 1-100");
			event.preventDefault();
			return;
		}	

		var regExpDescrizione=new RegExp("^.{1,1024}$");
		if(!regExpDescrizione.test($("#descrizioneEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> La descrizione deve avere lunghezza 1-1024");
			event.preventDefault();
			return;
		}	

		var regExpProvincia=new RegExp("^.{1,100}$");
		if(!regExpProvincia.test($("#provinciaEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> La provincia deve avere lunghezza 1-100");
			event.preventDefault();
			return;
		}		
		
		var regExpComune=new RegExp("^.{1,100}$");
		if(!regExpComune.test($("#comuneEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> Il comune deve avere lunghezza 1-100");
			event.preventDefault();
			return;
		}		
		
		var regExpIndirizzo=new RegExp("^.{1,256}$");
		if(!regExpIndirizzo.test($("#indirizzoEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> L'indirizzo deve avere lunghezza 1-256");
			event.preventDefault();
			return;
		}	
				
		
		var regExpData=new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}$");
		if(!regExpData.test($("#dataEvento").val())){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> La data deve essere nel formato yyyy-mm-ddThh:mm:ss");
			event.preventDefault();
			return;
		}	
		
		
		//Valido l'immagine
		var ext = $('#foto').val().split('.').pop().toLowerCase();
		if(ext==""){
			$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
			$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> Inserire un immagine");
			event.preventDefault();
			return;
		}
		if (ext!=""){//se l'immagine dell'annuncio è stata modificata
			if($.inArray(ext, ['gif','png','jpg','jpeg','']) == -1) {
				$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
				$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> Estensione dell'immagine scorretta");
				event.preventDefault();
				return;
			}
			if ( window.FileReader && window.File && window.FileList && window.Blob ){
				if($("#foto")[0].files[0].size>10*1024*1024){
					$('#alertErroreInserimentoNuovoEvento').css('display', 'block');
					$('#alertErroreInserimentoNuovoEventoTesto').html("<strong>Errore nell'inserimento dell'evento!</strong> L'immagine deve avere dimensione di al massimo 10MB");
					event.preventDefault();
					return;
				}
			} else console.log( "Il tuo browser non supporta la validazione dell'immagine" );
		 }	
		alert($("#dataEvento").val().substring(0,10) + " " + $("#dataEvento").val().substring(11,19));
		$.ajax({type:"POST",
			url: "InserisciNuovoEvento",
			cache: false,
			contentType: false,
			processData: false,
			data: new FormData($("#inserisciNuovoEvento")[0]),
			success: function(risposta){ //se la richiesta ha successo			
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('L\'evento &egrave; stato pubblicato con successo.');
				$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
					window.location.replace("eventi.jsp");
					})
				$('#modalFineOperazione').modal('show');
			},
			error: function (response) { //se la richiesta fallisce
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Non &egrave; stato possibile pubblicare l\'evento a causa di un errore.\nL\'errore riscontrato &egrave; ' + response.responseText);
				$('#modalFineOperazione').modal('show');
			}
		});
		
		/*
		$('#modalFineOperazioneTitle').html('Operazione terminata');
		$('#modalFineOperazioneBody').html('L\'evento &egrave; stato pubblicato con successo.');
		$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
			$("#inserisciNuovoPost").submit();
			})
		$('#modalFineOperazione').modal('show');
	*/
}




  function inizializzaValoriMassimaliInput(){
	  var text_max_charachters_title = 100;
	  var text_length_iniziale_titolo = $('#titoloEvento').val().length;
	  var text_remaining_iniziale_titolo = text_max_charachters_title - text_length_iniziale_titolo;
	  $('#count_message_title').html(text_remaining_iniziale_titolo + ' caratteri rimanenti');
	  $('#titoloEvento').keyup(function() {
			var text_length = $('#titoloEvento').val().length;
			var text_remaining = text_max_charachters_title - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#titoloEvento').val( $('#titoloEvento').val().substring(0,100)+ "");
				 text_length = $('#titoloEvento').val().length;
				 text_remaining = text_max_charachters_title - text_length;
				}

			$('#count_message_title').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  
	  var text_max_charachters_descrizione = 1024;
	  var text_length_iniziale_descrizione = $('#descrizioneEvento').val().length;
	  var text_remaining_iniziale_descrizione = text_max_charachters_descrizione - text_length_iniziale_descrizione;
	  $('#count_message_descrizione').html(text_remaining_iniziale_descrizione + ' caratteri rimanenti');
	  $('#descrizioneEvento').keyup(function() {
			var text_length = $('#descrizioneEvento').val().length;
			var text_remaining = text_max_charachters_descrizione - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#descrizioneEvento').val( $('#descrizioneEvento').val().substring(0,100)+ "");
				 text_length = $('#descrizioneEvento').val().length;
				 text_remaining = text_max_charachters_descrizione - text_length;
				}

			$('#count_message_descrizione').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  var text_max_charachters_provincia = 100;
	  var text_length_iniziale_provincia = $('#provinciaEvento').val().length;
	  var text_remaining_iniziale_provincia = text_max_charachters_provincia - text_length_iniziale_provincia;
	  $('#count_message_provincia').html(text_remaining_iniziale_provincia + ' caratteri rimanenti');
	  $('#provinciaEvento').keyup(function() {
			var text_length = $('#provinciaEvento').val().length;
			var text_remaining = text_max_charachters_provincia - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#provinciaEvento').val( $('#provinciaEvento').val().substring(0,100)+ "");
				 text_length = $('#provinciaEvento').val().length;
				 text_remaining = text_max_charachters_provincia - text_length;
				}

			$('#count_message_provincia').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  var text_max_charachters_comune = 100;
	  var text_length_iniziale_comune = $('#comuneEvento').val().length;
	  var text_remaining_iniziale_comune = text_max_charachters_comune - text_length_iniziale_comune;
	  $('#count_message_comune').html(text_remaining_iniziale_comune + ' caratteri rimanenti');
	  $('#comuneEvento').keyup(function() {
			var text_length = $('#comuneEvento').val().length;
			var text_remaining = text_max_charachters_comune - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#comuneEvento').val( $('#comuneEvento').val().substring(0,100)+ "");
				 text_length = $('#comuneEvento').val().length;
				 text_remaining = text_max_charachters_comune - text_length;
				}

			$('#count_message_comune').html(text_remaining + ' caratteri rimanenti');
		});
	
	  var text_max_charachters_indirizzo = 100;
	  var text_length_iniziale_indirizzo = $('#indirizzoEvento').val().length;
	  var text_remaining_iniziale_indirizzo = text_max_charachters_indirizzo - text_length_iniziale_indirizzo;
	  $('#count_message_indirizzo').html(text_remaining_iniziale_indirizzo + ' caratteri rimanenti');
	  $('#indirizzoEvento').keyup(function() {
			var text_length = $('#indirizzoEvento').val().length;
			var text_remaining = text_max_charachters_indirizzo - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#indirizzoEvento').val( $('#indirizzoEvento').val().substring(0,100)+ "");
				 text_length = $('#indirizzoEvento').val().length;
				 text_remaining = text_max_charachters_indirizzo - text_length;
				}

			$('#count_message_indirizzo').html(text_remaining + ' caratteri rimanenti');
		});
	  
  }

	

