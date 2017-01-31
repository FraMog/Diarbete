function cancellaRisposta(titolo, dataPubblicazioneTopic, dataPubblicazioneRisposta){
	$('#modalCancellazioneTitle').html('Sei sicuro?');
	$('#modalCancellazioneBody').html('Sei sicuro di voler cancellare tutto il topic? In questo modo anche tutte le risposte ad esso relative saranno cancellate!');
	$('#modalCancellaButton').click(function(){
		$('#modalCancellazione').modal('hide');
		$.ajax({type:"POST",
			url: "CancellaRisposta",
			data: { 
				'titolo': titolo, 
				'dataPubblicazioneTopic': dataPubblicazioneTopic,
				'dataPubblicazioneRisposta': dataPubblicazioneRisposta,
			},
			success: function(risposta){ //se la richiesta ha successo			
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('La risposta è stato cancellata con successo.');
				$('#modalFineOperazione').on('hidden.bs.modal', function (e) {
					location.reload();
					})
				$('#modalFineOperazione').modal('show');
			},
			error: function (response) { //se la richiesta fallisce
				$('#modalFineOperazioneTitle').html('Operazione terminata');
				$('#modalFineOperazioneBody').html('Non è stato possibile cancellare la risposta a causa di un errore interno del server. Si prega di riprovare più tardi.');
				$('#modalFineOperazione').modal('show');
			}
		});
	});
   
}