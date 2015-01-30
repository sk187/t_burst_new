circleSizer = window.setInterval(function(){
	// Gets Value of Ticker Box 1
  	var scoreOne = parseInt($('#ticker-one').text());
	// Gets Value of Ticker Box 2 
	var scoreTwo = parseInt($("#ticker-two").text());
	// Gets the difference between the scores
	var size = 50
	var ratioOne = (scoreOne/scoreTwo);
	var ratioTwo = (scoreTwo/scoreOne);

	if(ratioOne > 3){
		$("#circle-one").css("height", function (height){
		return height+ 200;
		});

		$("#circle-one").css("width", function (width){
		return width+ 200;
		});

		$("#circle-two").css("height", function (height){
		return height+ 50;
		});

		$("#circle-two").css("width", function (width){
		return width+ 50;
		});
	}
	
	else if (ratioTwo > 3) {

		$("#circle-one").css("height", function (height){
		return height+ 50;
		});

		$("#circle-one").css("width", function (width){
		return width+ 50;
		});

		$("#circle-two").css("height", function (height){
		return height+ 200;
		});

		$("#circle-two").css("width", function (width){
		return width+ 200;
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
