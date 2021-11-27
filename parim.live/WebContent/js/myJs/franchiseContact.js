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


//form pr se submit button Click karne k bd.....
function submitFranchiseContactForm(){
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
	 var datastring = $("#franchiseContactForm").serialize();
	 OtpPopup(datastring);
}

function OtpPopup(datastring){
	var generated_otp = generateOTP();
	console.log("generated_otp : "+generated_otp);
	phone = $('input[name="phone"]').val();
	sendOTP(generated_otp,phone);
	Swal.fire({
		  title: '<br><br><strong>Enter OTP </strong>',
		  html:
			  '<div class="otpPopUP form-group pos_rel">'+
			  	'<p>OTP is Sent to Your Mobile Number.</p>'+
				'<ul class="code-alrt-inputs signup-code-list">'+
					'<li><input id="code1" name="number1" type="text" maxlength="1" onkeyup="moveOnMax(this,`code2`)" class="form-control input-md" required=""></li>'+
					'<li><input id="code2" name="number2" type="text" maxlength="1" onkeyup="moveOnMax(this,`code3`)" class="form-control input-md" required=""></li>'+
					'<li><input id="code3" name="number3" type="text" maxlength="1" onkeyup="moveOnMax(this,`code4`)" class="form-control input-md" required=""></li>'+
					'<li><input id="code4" name="number4" type="text" maxlength="1" onkeyup="moveOnMax(this,`code5`)"class="form-control input-md" required=""></li>'+
					'<li><input id="code5" name="number5" type="text" maxlength="1" class="form-control input-md" required=""></li><br><br>'+
					'<li></li>'+
				'</ul>'+
				'<a class="btn hover-btn code-btn145  varifyOTP" href="#" style="background:var(--theme-color)">Verify OTP</a><br><br>'+
				'<small>OTP can Take upto 1 Minute to Deliver.<br>'+
			'</div>',
		  showCloseButton: true,
		  showConfirmButton:false,
		  allowOutsideClick: false,
		  focusConfirm: false,
		})
	$(".varifyOTP").click(function(){
		var otp1 = $("#code1").val();
		var otp2 = $("#code2").val();
		var otp3 = $("#code3").val();
		var otp4 = $("#code4").val();
		var otp5 = $("#code5").val();
		var entered_otp = otp1+otp2+otp3+otp4+otp5;
		if (generated_otp == entered_otp) {
			submitForm(datastring);
		}
		else{
			alert('wrong OTP')
		}
	})
}

function moveOnMax(field,nextFieldID){
	  if(field.value.length >= field.maxLength){
	    document.getElementById(nextFieldID).focus();
	  }
	}

function submitForm(datastring){
	$.ajax({
	  url:'/parim.live/pages/franContact',
	  data:  datastring,
	  type:'post',
	  cache:false,
	  success:function(data){
  	    $('#franchiseContactForm').trigger("reset");
		Swal.fire({
			  title: '<br><br><strong>Submitted</strong>',
			  icon:'success',
			  html:'<center>Your Application Is Submitted. Our Team Will Contact You as soon as Possible</center>',
			  showCloseButton: false,
			  showConfirmButton:true,
			  allowOutsideClick: true,
			  focusConfirm: false,
		}) 
	  },
	  error:function(){
		  Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Something went wrong!<br>Your Application Is Not Submitted.Please Try again Later.<br>If problem Continue,Contact Support.',
			  footer: '<a href="#">Why do I have this issue?Report Problem</a>'
			})
	  }
	});
}



function sendOTP(otp,phone){	
	$.ajax({
        url:'/parim.live/otherJavaFiles/sendOtp',
        data:{
        	otp: `${otp}`,
        	phone:`${phone}`
    	},
        type:'post',
        cache:false,
        success:function(data){
           alert("Otp sent Successfully ");
        },
        error:function(){
          alert('Problem in sending OTP');
        }
     });
}

function generateOTP(){
	var text = "";
	var char_list = "0123456789";
	for(var i=0; i < 5; i++ )
	{  
	text += char_list.charAt(Math.floor(Math.random() * char_list.length));
	}
	return text;
}