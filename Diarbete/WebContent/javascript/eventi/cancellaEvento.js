/**
 * 
 */

function cancellaEvento(titolo, dataPubblicazioneEvento){
	$('#modalCancellazioneTitle').html('Sei sicuro?');
	$('#modalCancellazioneBody').html('Sei sicuro di voler cancellare l\'evento?');
	$('#modalCancellaButton').click(function(){
		$('#modalCancellazione').modal('hide');
		$.ajax({type:"POST",
			url: "CancellaEvento",
			data: { 
				'titolo': titolo, 
				'dataPubblicazioneEvento': dataPubblicazioneEvento
			},
			success: function(risposta){ //se la richiesta ha successo			
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('L\'evento &egrave; stato cancellato con successo.');
				$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
					window.location.replace("eventi.jsp");
					})
				$('#modalFineOperazione').modal('show');
			},
			error: function (response) { //se la richiesta fallisce
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Non &egrave; stato possibile cancellare l\'evento a causa di un errore interno del server. Si prega di riprovare più tardi.');
				$('#modalFineOperazione').modal('show');
			}
		});
	});
}