$('#leaderboard_link').unbind("click").on('click', function(){
	$('#leaderboard').toggle('slow');
});

$('#your_stats').unbind('click').on('click', function(){
	$('#stats').toggle('slow');
});