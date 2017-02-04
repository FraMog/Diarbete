/**
 * 
 */

 function inserisciPaginator(){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleEventiPresenti').html())/(6)),
	      page: 1,
	      maxVisible: 5
	  }).on('page', function(event, num)
	  {
		  mostraPaginaEventi(num);
		  $('#show_paginator').bootpag({
			  total: Math.ceil(parseInt($('#numeroTotaleEventiPresenti').html())/(6))
		  });
	  });

 }
 
 function inserisciPaginatorInRisultatiRicerca (stringaDaCercare, tipologiaRicerca){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleEventiPresenti').html())/(6)),
	      page: 1,
	      maxVisible: 5
	  }).on('page', function(event, num)
	  {
		  cercaEventi(num, stringaDaCercare, tipologiaRicerca);
		  $('#show_paginator').bootpag({
			  total: Math.ceil(parseInt($('#numeroTotaleEventiPresenti').html())/(6))
		  });
	  });
 }