$(document).ready(function(){
	$.getJSON( "http://localhost:8080/api/aluno", function(data){
		var nomes = []
		for(x =0; x<data.length; x++){
	    	nomes.push( data[x].nome);
		}
		console.log(nomes);
		$("#nome" ).autocomplete({
	        source: nomes
	  });
	})
});