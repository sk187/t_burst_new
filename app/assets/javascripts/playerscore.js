circleSizer = window.setInterval(function(){
	// Gets Value of Ticker Box 1
  	var scoreOne = $('#ticker-one').text();
	// Gets Value of Ticker Box 2 
	var scoreTwo = $("#ticker-two").text();
	// Turns the value to int
	parseInt(scoreOne);
	parseInt(scoreTwo);
	// Gets the difference between the scores
	var size = 50
	var ratioOne = (scoreOne/scoreTwo);
	var ratioTwo = (scoreTwo/scoreOne);

	if(ratioOne > 5){
		$("#circle-one").css("height", function (height){
		return height+ 300;
		});

		$("#circle-one").css("width", function (width){
		return width+ 300;
		});

		$("#circle-two").css("height", function (height){
		return height+ 25;
		});

		$("#circle-two").css("width", function (width){
		return width+ 25;
		});
	}
	
	else if (ratioTwo > 5) {

		$("#circle-one").css("height", function (height){
		return height+ 25;
		});

		$("#circle-one").css("width", function (width){
		return width+ 25;
		});

		$("#circle-two").css("height", function (height){
		return height+ 300;
		});

		$("#circle-two").css("width", function (width){
		return width+ 300;
		});
	}

	else{
		$("#circle-one").css("height", function (height){
		return height+ (ratioOne * size);
		});

		$("#circle-one").css("width", function (width){
		return width+ (ratioOne * size);
		});

		$("#circle-two").css("height", function (height){
		return height+ (ratioTwo * size);
		});

		$("#circle-two").css("width", function (width){
		return width+ (ratioTwo * size);
		});
	}	
}, 10);	
