function nameValidation(object){
	var rightValue = true;
	var value = $(object).val();
	value = value.trim();
	console.log("nameValidation : "+value);
	// ye if value check karne k liye
	if (value==="") {
		rightValue=false;
	}
	else if(/^[a-zA-Z- ]*$/.test(value) == false) {
	 	rightValue=false;
	}

	if (rightValue) {
		$(object).css("border-color","transparent");
		return rightValue;
	}
	else{
		$(object).css("border-color","#f00");
		return rightValue;
	}
}

function emailValidation(object) {
	var rightValue = true;
	var value = $(object).val();
	value = value.trim();
	console.log("emailValidation : "+value);
	// ye if value check karne k liye
	if (value==="") {
		rightValue=false;
	}
	else if(!value.includes("@") ) {
	 	rightValue=false;
	}
	else if(!value.includes(".")){
		rightValue=false;
	}
	
	if (rightValue) {
		$(object).css("border-color","transparent");
		return rightValue;
	}
	else{
		$(object).css("border-color","#f00");
		return rightValue;
	}
    
}

function textAreaValidation(object){
	var rightValue = true;
	var value = $(object).val();
	
	value = value.trim();
	alert(value);
	// ye if value check karne k liye
	if (value==="") {
		rightValue=false;
	}
	if (rightValue) {
		$(object).css("border-color","transparent");
		return rightValue;
	}
	else{
		$(object).css("border-color","#f00");
		return rightValue;
	}
}

function textValidation(object){
	var rightValue = true;
	var value = $(object).val();
	value = value.trim();
	// ye if value check karne k liye
	if (value==="") {
		rightValue=false;
	}
	if (rightValue) {
		$(object).css("border-color","transparent");
		return rightValue;
	}
	else{
		$(object).css("border-color","#f00");
		return rightValue;
	}
}

function phoneValidation(object){
	var rightValue = true;
	var value = $(object).val();
	value = value.trim();
	// ye if value check karne k liye
	if (value==="" || value.length!=10) {
		rightValue=false;
	}
	else if(/^[0-9-]*$/.test(value) == false) {
	 	rightValue=false;
	}

	if (rightValue) {
		$(object).css("border-color","transparent");
		return rightValue;
	}
	else{
		$(object).css("border-color","#f00");
		return rightValue;
	}
}