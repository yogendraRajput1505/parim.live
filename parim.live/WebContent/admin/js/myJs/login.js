function submitLoginForm(){
	var userPhone = $('input[name="id"]').val();
	var userPassword = $('input[name="password"]').val();
	//	$(".loginForm").submit();
		$.ajax({
	        url:'/parim.live/admin/login',
	        data:{
	        	id:userPhone,
	        	password:userPassword
	        },
	        type:'post',
	        cache:false,
	        success:function(data){   
	        	
	        	if(data==="true"){
	        		Swal.fire({
		  	  			  icon: 'success',
		  	  			  title: '',
		  	  			  text: 'Login Successful.Redirecting...',
		  	  			showConfirmButton:false,
		  	  			  footer: ''
		  	  			})
	            	sleep(1000).then(() => {
	            		window.location = 'index.jsp';
	            	})
	        		
	        	}
	        	else if(data==="false"){
	        		Swal.fire({
	  	  			  icon: 'error',
	  	  			  title: 'Oops...',
	  	  			  text: 'Invalid Phone Or Password. Try again with correct Information',
	  	  			  footer: ''
	  	  			})
	        	}
	        },
	        error:function(){
	        	Swal.fire({
  	  			  icon: 'error',
  	  			  title: 'Oops...Error',
  	  			  text: 'Problem in validating. Login after some time. ',
  	  			  footer: ''
  	  			})
	        }
	     });
	}


	function sleep(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
   }