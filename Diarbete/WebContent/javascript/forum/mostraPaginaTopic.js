function mostraPaginaTopic(paginaDaMostrare){
	$.ajax({type:"POST",
		url: "MostraTopicPagina",
		data: { 
			'paginaDaMostrare': paginaDaMostrare
		},
		success: function(risposta){ //se la richiesta ha successo			
			$('#topicContainer').html(risposta);		
		},
		
	});
}