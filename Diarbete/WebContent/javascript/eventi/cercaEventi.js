

function cercaEventi(paginaDaCercare, stringaDaCercare, tipologiaRicerca){
	$.ajax({type:"POST",
		url: "MostraEventiPagina",
		data: { 
			'paginaDaMostrare': paginaDaCercare,
			'stringaDaCercare': stringaDaCercare,
			'tipologiaRicerca': tipologiaRicerca
		},
		success: function(risposta){ //se la richiesta ha successo			
			$('#eventiContainer').html(risposta);
			$('#introductionRicercaEventi').html('Risultati ricerca per tipologia Ricerca: <b>' + tipologiaRicerca +'</b>' + '&nbsp;Testo cercato:&nbsp;<b>' + stringaDaCercare + '</b>');
			
		},
		
	});
}

