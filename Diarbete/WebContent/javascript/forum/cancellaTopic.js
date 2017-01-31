/**
 * 
 */

function cancellaTopic(titolo, dataPubblicazioneTopic){
	$('#modalCancellazioneTitle').html('Sei sicuro?');
	$('#modalCancellazioneBody').html('Sei sicuro di voler cancellare tutto il topic? In questo modo anche tutte le risposte ad esso relative saranno cancellate!');
	$('#modalCancellaButton').click(function(){
		$('#modalCancellazione').modal('hide');
		$.ajax({type:"POST",
			url: "CancellaTopic",
			data: { 
				'titolo': titolo, 
				'dataPubblicazioneTopic': dataPubblicazioneTopic
			},
			success: function(risposta){ //se la richiesta ha successo			
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Il topic è stato cancellato con successo.');
				$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
					window.location.replace("forum.jsp");
					})
				$('#modalFineOperazione').modal('show');
			},
			error: function (response) { //se la richiesta fallisce
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Non è stato possibile cancellare il topic a causa di un errore interno del server. Si prega di riprovare più tardi.');
				$('#modalFineOperazione').modal('show');
			}
		});
	});
}