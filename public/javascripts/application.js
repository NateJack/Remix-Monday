function countTitle(){
	
	var titleLength = document.getElementById("remix_title").value.length;
	
	if (titleLength > 0){
		document.getElementById("remix_submit").disabled = false;
	} else {
		document.getElementById("remix_submit").disabled = true;
	}
	
}