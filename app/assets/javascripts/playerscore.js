$("#submit1").unbind("click");
$("#submit1").unbind("click").on("click", function(event){
	event.preventDefault();
	// Submit number
	var submit1 = $("#score1").val();
	// Ticker Box Value 
	var scoreOne = $("#ticker1").text();
	// Ticker Box Selector
	var boxOne = $("#ticker1");
	// Empty Ticker Box
	boxOne.empty();
	// Append submitted value to box
	boxOne.append(submit1);
	//Calls the Box 1 again for updated info
	scoreOne = $("#ticker1").text();
	// Gets Value of Ticker Box 2 
	var scoreTwo = $("#ticker2").text();
	// Turns the value to int
	parseInt(scoreOne);
	console.log(scoreOne);
	parseInt(scoreTwo);
	console.log(scoreTwo);

	// Gets the difference between the scores
	var diff = scoreOne - scoreTwo;
	console.log(diff);
	
	if (diff < 5 )	{
		$("#circle1").css("height", function (height){
		return height + 60;
		});

		$("#circle1").css("width", function (width){
		return width + 60;
		});
	}

	else {
		$("#circle1").css("height", function (height){
		return height+ 60 + (diff * 1.25);
		});

		$("#circle1").css("width", function (width){
		return width+ 60 + (diff * 1.25);
		});

	}
	
});

$("#submit2").unbind("click");
$("#submit2").unbind("click").on("click", function(event){
	event.preventDefault();
	// Submit number
	var submit2 = $("#score2").val();
	// Ticker Box Value 
	var scoreTwo = $("#ticker2").text();
	// Ticker Box Selector
	var boxTwo = $("#ticker2");
	// Empty Ticker Box
	boxTwo.empty();
	// Append submitted value to box
	boxTwo.append(submit2);
	//Calls the Box 2 again for updated info
	scoreTwo = $("#ticker2").text();
	// Gets Value of Ticker Box 1 
	var scoreOne = $("#ticker1").text();
	// Turns the value to int
	parseInt(scoreOne);
	console.log(scoreOne);
	parseInt(scoreTwo);
	console.log(scoreTwo);

	// Gets the difference between the scores
	var diff =  scoreTwo - scoreOne;
	console.log(diff);
	
	if (diff < 5 )	{
		$("#circle2").css("height", function (height){
		return height + 60;
		});

		$("#circle2").css("width", function (width){
		return width + 60;
		});
	}

	else {
		$("#circle2").css("height", function (height){
		return height+ 60 + (diff * 1.25);
		});

		$("#circle2").css("width", function (width){
		return width+ 60 + (diff * 1.25);
		});

	}
	
});