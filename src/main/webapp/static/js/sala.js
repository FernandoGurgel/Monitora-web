var cont = 1;

$('body').on('click', 'button.remove-item', function() {
	var cod = $(this).val();
	jQuery.ajax({
		type:"GET",
		url: "http://13.82.130.246:8080/api/horarioremove?id="+cod,
		success: function(){
			$(".addDia > tr").remove();
			carregar();
		}
	});
});

$(document).ready(function(){
	carregar();
	$("#addDia").click(function() {
		var dia = $("select[name=dia]").val();
		var inicio = $("select[name=inicio]").val();
		var fim = $("select[name=fim]").val();
		jQuery.ajax({
			type:"POST",
			url: "http://13.82.130.246:8080/sala/addHorario",
			data: {'dia':dia,'inicio':inicio,'fim':fim},
			success: function(){
				
				$(".addDia > tr").remove();
				carregar();
			}
		});
	});
});



function carregar() {
	$.getJSON( "http://13.82.130.246:8080/api/horarioCadastro", function(data){
		
		for(x = 0; x <  data.length; x++){
			$(".addDia").append("<tr>" +
					"<th scope='row'>"+data[x].id+"</th>"+
					"<td>"+data[x].dia+"</th>"+
					"<td>"+data[x].inicio+"</td>" +
					"<td>"+data[x].fim+"</td>" +
					"<td class='text-center'><button type='button' value='"+data[x].id+"' class='btn btn-outline-danger align-bottom remove-item' ><i class='far fa-window-close'></i></button>" +
					"</td></tr>");
		}
	});
}