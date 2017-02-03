/**
 * 
 */

 function inserisciPaginator(){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5)),
	      page: 1,
	      maxVisible: 5
	  }).on('page', function(event, num)
	  {
		  mostraPaginaTopic(num);
		  $('#show_paginator').bootpag({
			  total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5))
		  });
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