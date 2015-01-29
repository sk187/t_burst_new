
$('#leaderboard_link').unbind("click").on("click", setLeaderboard);

$('#leaderboard_link').unbind("click").on("click", function(){
	$('#leaderboard').toggle('slow')
});

			

function setLeaderboard(){
	var url = "/leaderboards.json";
	
	$.ajax({
		type: "GET",
		url: url,
		dataType: "json",
		success: function(response){
		for (i=0; i<response.length; i++){
			$('#leaders').append('<li>' + response[i].name + response[i].wins + '</li>');
		}
		}, 
		error: function(){
			alert('Broken');
		}
	});
}

$('#your_stats').unbind("click").on("click", setStatus);

$('#your_stats').unbind("click").on("click", function(){
	$('#stats').toggle('slow')
});

			

function setStatus(){
	var url_stats = "/users.json";
	
	$.ajax({
		type: "GET",
		url: url_stats,
		dataType: "json",
		success: function(response){
		$('#my_stats').append('<li>' + response.name + response.wins + response.losses + response.ties + '</li>');
		}, 
		error: function(){
			alert('Broken');
		}
	});
}