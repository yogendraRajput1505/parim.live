


/**
 * 
 */
function getFormValidation(){
	var valid = true;
	
	if (!nameValidation($('input[name="name"]'))){	
		valid = false;
	}
	if(!phoneValidation($('input[name="phone"]')) ) {
		valid = false;
	}
	if(!emailValidation($('input[name="email"]')) ) {
		valid = false;
	}
	if(!nameValidation($('input[name="city"]')) ) {
		valid = false;
	}
	if(!textValidation($('textarea[name="message"]')) ) {
		valid = false;
	}
	return valid;
}

function submitContactUsForm(){
	var validation = getFormValidation();
	if(validation){
		getSignUpFormData();
	}
	else{
		Swal.fire({
		  icon: 'error',
		  title: 'Oops...',
		  text: 'Enter correct Information. If there is a red Underline ,try to remove it.'
		})
	}
}

function getSignUpFormData(){
	 var datastring = $("#contactUsForm").serialize();
	 submitForm(datastring);
}

function submitForm(datastring){
	$.ajax({
	  url:'/parim.live/pages/contactUs1',
	  data:  datastring	,
	  type:'post',
	  cache:false,
	  success:function(data){
 	    $('#contactUsForm').trigger("reset");
		Swal.fire({
			  title: '<br><br><strong>Successfully Submitted</strong>',
			  icon:'success',
			  html:'<center>Your Application Is Submitted. Our Team Will Contact You as soon as Possible</center>',
			  showCloseButton: false,
			  showConfirmButton:true,
			  allowOutsideClick: true,
			  focusConfirm: true,
		}) 
	  },
	  error:function(){
		  Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Something went wrong!<br>Your Application Is Submitted.'
			})
	  }
	});
}