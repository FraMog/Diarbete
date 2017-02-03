/**
 * 
 */

function validaInserimentoNuovoPost(){

		var regExpTitolo=new RegExp("^.{1,100}$");
		if(!regExpTitolo.test($("#titoloPost").val())){
			$('#alertErroreInserimentoNuovoPost').css('display', 'block');
			$('#alertErroreInserimentoNuovoPostTesto').html("<strong>Errore nell'inserimento del post!</strong> Il titolo deve avere lunghezza 1-100");
			event.preventDefault();
			return;
		}	
		
		var regExpArgomento=new RegExp("^.{1,256}$");
		if(!regExpArgomento.test($("#argomentoPost").val())){
			$('#alertErroreInserimentoNuovoPost').css('display', 'block');
			$('#alertErroreInserimentoNuovoPostTesto').html("<strong>Errore nell'inserimento del post!</strong> L'argomento deve avere lunghezza 1-100");
			event.preventDefault();
			return;
		}	
		
		var regExpBody=new RegExp("^.{1,256}$");
		if(!regExpBody.test($("#bodyPost").val())){
			$('#alertErroreInserimentoNuovoPost').css('display', 'block');
			$('#alertErroreInserimentoNuovoPostTesto').html("<strong>Errore nell'inserimento del post!</strong> La domanda/problema deve avere lunghezza 1-256");
			event.preventDefault();
			return;
		}		
				
		$('#modalFineOperazioneTitle').html('Operazione terminata');
		$('#modalFineOperazioneBody').html('Il topic &egrave; stato pubblicato con successo.');
		$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
			$("#inserisciNuovoPost").submit();
			})
		$('#modalFineOperazione').modal('show');
	
}




  function inizializzaValoriMassimaliInput(){
	  var text_max_charachters_title = 100;
	  var text_length_iniziale_titolo = $('#titoloPost').val().length;
	  var text_remaining_iniziale_titolo = text_max_charachters_title - text_length_iniziale_titolo;
	  $('#count_message_title').html(text_remaining_iniziale_titolo + ' caratteri rimanenti');
	  $('#titoloPost').keyup(function() {
			var text_length = $('#titoloPost').val().length;
			var text_remaining = text_max_charachters_title - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#titoloPost').val( $('#titoloPost').val().substring(0,100)+ "");
				 text_length = $('#titoloPost').val().length;
				 text_remaining = text_max_charachters_title - text_length;
				}

			$('#count_message_title').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  
	  var text_max_charachters_argomento = 100;
	  var text_length_iniziale_argomento = $('#argomentoPost').val().length;
	  var text_remaining_iniziale_argomento = text_max_charachters_argomento - text_length_iniziale_argomento;
	  $('#count_message_argomento').html(text_remaining_iniziale_argomento + ' caratteri rimanenti');
	  $('#argomentoPost').keyup(function() {
			var text_length = $('#argomentoPost').val().length;
			var text_remaining = text_max_charachters_argomento - text_length;
			 if((parseInt(text_remaining)<0)){
				 $('#argomentoPost').val( $('#argomentoPost').val().substring(0,100)+ "");
				 text_length = $('#argomentoPost').val().length;
				 text_remaining = text_max_charachters_argomento - text_length;
				}

			$('#count_message_argomento').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  
	  var text_max_charachters_body = 256;
	  var text_length_iniziale_body = $('#bodyPost').val().length;
	  var text_remaining_iniziale_body = text_max_charachters_body - text_length_iniziale_body;
	  $('#count_message_body').html(text_remaining_iniziale_body + ' caratteri rimanenti');
	  $('#bodyPost').keyup(function() {
			var text_length = $('#bodyPost').val().length;
			var text_remaining = text_max_charachters_body - text_length;
			$('#count_message_body').html(text_remaining + ' caratteri rimanenti');
		});
	  
	  
  }

	

