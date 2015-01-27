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



// reset event listener
document.getElementById("reset").addEventListener('click', resetTimer);
// start event listener
document.getElementById("start").addEventListener('click', startTimer);
// pause event listener
document.getElementById("pause").addEventListener('click', pauseTimer);

var timer = document.getElementById("timer");
var interval;
var p = 0;
var seconds = 0;

function startTimer(){
	p = 0	
	interval = setInterval(counter, 1000);
}

function counter(){
	if ( p === 0 ){
		seconds ++;
		timer.innerHTML = "Time elapsed: " + seconds;
	}
}

function resetTimer(){
	clearInterval(interval);
	timer.innerHTML = "Stop Watch";
}

function pauseTimer(){
	p = 1;
	clearInterval(interval);
}


 $.ajax({
    type: "POST",