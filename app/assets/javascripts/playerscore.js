// $('#start-button').on('click', function(event){
// 	event.preventDefault;

window.setInterval(function(){
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
	console.log("Ratio One is " + ratioOne);
	console.log("Ratio Two is " + ratioTwo);

	if(ratioOne > 6){
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
	
	else if (ratioTwo > 6) {

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






// $("#submit2").unbind("click");
// $("#submit2").unbind("click").on("click", function(event){
// 	event.preventDefault();
// 	// Submit number
// 	var submit2 = $("#score2").val();
// 	// Gets Value of Ticker Box 1
// 	var scoreOne = $("#ticker1").text();
// 	// Gets Value of Ticker Box 2 
// 	var scoreTwo = $("#ticker2").text();
// 	// Ticker Box Selector
// 	var boxTwo = $("#ticker2");
// 	// Empty Ticker Box
// 	boxTwo.empty();
// 	// Append submitted value to box
// 	boxTwo.append(submit2);
// 	//Calls the Box 2 again for updated info
// 	scoreTwo = $("#ticker2").text();
// 	// Turns the value to int
// 	parseInt(scoreOne);
// 	console.log("Score one is " +scoreOne);
// 	parseInt(scoreTwo);
// 	console.log("Score one is " +scoreTwo);

// 	// Gets the difference between the scores
// 	var size = 50
// 	var ratioOne = (scoreOne/scoreTwo);
// 	var ratioTwo = (scoreTwo/scoreOne);
// 	console.log("Ratio One is " + ratioOne);
// 	console.log("Ratio Two is " + ratioTwo);
	
// 	if(ratioTwo > 6){
// 	
// 	}

// 	else {
// 		$("#circle-one").css("height", function (height){
// 		return height+ (ratioOne * size);
// 		});

// 		$("#circle-one").css("width", function (width){
// 		return width+ (ratioOne * size);
// 		});

// 		$("#circle-two").css("height", function (height){
// 		return height+ (ratioTwo * size);
// 		});

// 		$("#circle-two").css("width", function (width){
// 		return width+ (ratioTwo * size);
// 		});
// 	}
// });