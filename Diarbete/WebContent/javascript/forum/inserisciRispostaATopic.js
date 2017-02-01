/**
 * 
 */

function inserisciRisposta(titolo, dataPubblicazioneTopic){
		
		var regExpBody=new RegExp("^.{1,256}$");
		if(!regExpBody.test($("#bodyPost").val())){
			$('#alertErroreInserimentoNuovoPost').css('display', 'block');
			$('#alertErroreInserimentoNuovoPostTesto').html("<strong>Errore nell'inserimento del post!</strong> La domanda/problema deve avere lunghezza 1-256");
			event.preventDefault();
			return;
		}	
		
		
		$.ajax({type:"POST",
			url: "InserisciRispostaATopic",
			data: { 
				'titolo': titolo, 
				'dataPubblicazioneTopic': dataPubblicazioneTopic,
				'body': $("#bodyPost").val()
			},
			success: function(risposta){ //se la richiesta ha successo			
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('La risposta &egrave; stata inserita con successo.');
				$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
					location.reload();
					})
				$('#modalFineOperazione').modal('show');
			},
			error: function (response) { //se la richiesta fallisce
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Non &egrave; stato possibile inserire la risposta a causa di un errore interno del server. Si prega di riprovare più tardi.');
				$('#modalFineOperazione').modal('show');
			}
		});
				
	
}





  function inizializzaValoriMassimaliInput(){
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

	