/**
 * 
 */

function modificaPaginator(){
	 $('#show_paginator').bootpag({
	      total: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5))
	  });
	 var html="<li><a onclick='vaiAultimaPagina()'>Ultima Pagina</a></li>";
	 $('.pagination.bootpag').append(html);
	 
	 var html2="<li><a onclick='vaiAPrimaPagina()'>Prima Pagina</a></li>";
	 $('.pagination.bootpag').prepend(html2);
 }
 
 function vaiAultimaPagina(){
	 $('#show_paginator').bootpag({
		 page: Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5))
		 });
	 $('#show_paginator').trigger('page',Math.ceil(parseInt($('#numeroTotaleTopic').html())/(5)));
 }
 
 function vaiAPrimaPagina(){
	 $('#show_paginator').bootpag({
		 page: 1
		 });
	 $('#show_paginator').trigger('page',1);
 }