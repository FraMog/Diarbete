

function cercaPerTitolo (paginaDaCercare, titoloPostdaCercare){
	$.ajax({type:"POST",
		url: "MostraTopicPagina",
		data: { 
			'paginaDaMostrare': paginaDaCercare,
			'titoloTopicDaCercare': titoloPostdaCercare
		},
		success: function(risposta){ //se la richiesta ha successo			
			$('#topicContainer').html(risposta);
			$('#introductionTopic').html('Risultati ricerca per titolo: <b>' + $('#titoloPostDaCercare').val() + '</b>');
			
		},
		
	});
}

