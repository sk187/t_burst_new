$(document).ready(function() {
	$('#circle-one').on('click', function(){
		alert("explode");
		$('#circle-one').toggle('explode', {pieces: 500}, 1000);
	})
});
