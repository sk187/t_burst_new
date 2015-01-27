$("#startbutton").click(function(){
	// event.preventDefault();
	alert("This is working");
	var p = 0	
	var interval = setInterval(counter, 1000);

	function counter(){
	if ( p === 0 ){
		seconds --;
		timer.innerHTML = ":" + seconds;
	}
 	if (seconds <= -1) {
      clearInterval(interval);
      	timer.innerHTML = "New Game";
      	$("#startbutton").click(function(){
      		alert("This is where the game should reset");
      		timer.innerHTML = "Start";
      		 clearInterval(interval);
      		    function resetInterval() {
 
        } 

      	});
    }
}

});


// var btn = document.querySelector('button');
// btn.addEventListener('click', newGame);

// function newGame(){
//   var i = 3;
//   var gameLoop = setInterval(function(){
//     btn.innerHTML = i--; 
//     if( i == -2 ){
//       clearInterval( gameLoop );
//       btn.innerHTML = "New Game";
//     }
//   }, 1000); 
// }






var timer = document.getElementById("timer");
var interval;
var p = 0;
var seconds = 4;


