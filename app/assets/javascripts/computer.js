function setRandomHashTag(){
	var url = window.location.origin + "/computer.json";
	console.log(url);
	
	$.ajax({
		type: "GET",
		url: url,
		dataType: "json",
		success: function(hashTag){
			renderHashTag(hashTag);
		}, 
		error: function(){
			alert('Broken');
		}
	});
}

function renderHashTag(hashTag) {
	$("#hash1").append(hashTag.tag);
	$("#hash2").append(hashTag.tag);
}

setRandomHashTag();