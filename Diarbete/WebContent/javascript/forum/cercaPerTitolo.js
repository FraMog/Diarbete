



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


function inserisciPaginatorInRisultatiRicerca (paginaDaCercare, titoloPostdaCercare){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5)),
	      page: 1,
	      maxVisible: 5
	  }).on('page', function(event, num)
	  {
		  cercaPerTitolo (num, titoloPostdaCercare);
		  $('#show_paginator').bootpag({
			  total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5))
		  });
	  });
	 
	 
}


function modificaPaginator(){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5))
	  });
}