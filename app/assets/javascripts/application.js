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
//= require turbolinks
//= require_tree .

var object = {
	hashtag_one_body : "#hello",
	hashtag_two_body : "#goodbye"
};

// options for object:
// winning_player_id
// losing_player_id
// winning_hashtag_score
// losing_hashtag_score
// tie_player_one_id
// tie_player_two_id
// tie_score
// hashtag_one_body
// hashtag_two_body

$.ajax({
	url: '/matches',
	data: {match: object},
	dataType: 'json',
	type: 'POST'
});


<<<<<<< HEAD






=======
>>>>>>> d7a15bb5abe0cb455555a6900d1aeaf2a31ea402
