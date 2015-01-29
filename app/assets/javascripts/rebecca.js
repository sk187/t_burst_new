var timer = $("#start-button");
var interval;
var p = 0;
var seconds = 30;


   
    

$("#start-button").unbind("click").on("click", function(){
  p = 0;
	console.log("Hello");
	interval = setInterval(counter, 1000);
  });

function counter(){
  if (p == 0){
    seconds --;
    $("#start-button").text("00:" + seconds);
  }
  if (seconds == -1) {
      p = 1;
      clearInterval(interval);
        $("#start-button").text ("New Game");
        $("#start-button").on("click", reset())
    }
  };
  

function reset(){
  console.log("This is where the game should reset");
  clearInterval(interval);
  timer.text ("Start");
  seconds = 10;
}