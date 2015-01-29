// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery_ui.min
//= require_tree .



$('#element').click(function(){
	var matchData = {
		hashtag_one_body : null,
		hashtag_two_body : null,
		winning_player : null,
		losing_player : null,
		winning_hashtag_score : null,
		losing_hashtag_score : null,
		tie_player_one : null,
		tie_score : null
	};
	$.ajax({
		url: '/matches',
		data: {match: matchData},
		dataType: 'json',
		type: 'POST'
	});
});