  		
		//fran_Store Page JS
			
		function addStore(idOfForm){
			 var form = $("#"+idOfForm)[0];
			 var datastring = new FormData(form);
			 sendRequestToAddStore(datastring);
		}
		
		function sendRequestToAddStore(datastring){
			$.ajax({
				type:'post',
				enctype: 'multipart/form-data',
				url:'/parim.live/admin/addStore',
		  	    data:  datastring	,
		  	    processData: false,
		        contentType: false,
			    cache:false,
			    success:function(data){
				Swal.fire({
					  title: '<br><br><strong>Successfully Added</strong>',
					  icon:'success',
					  html:'<center></center>',
					  showCloseButton: true,
					  showConfirmButton:true,
					  allowOutsideClick: true,
					  focusConfirm: false,
				}) 
			  },
			  error:function(){
				  Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!<br>Store is not Successfully Added.'
					})
			  }
			});
		}
		
		function readPhotoURL(input) {
		   if (input.files && input.files[0]) {
		      var reader = new FileReader();

		        reader.onload = function (e) {
		            $('#store_image')
		                .attr('src', e.target.result)
		                .width(180)
		                .height(180);
		        };

		        reader.readAsDataURL(input.files[0]);
		    }
		}
		
		function updateFormToEdit(data){
			$("#modalContactForm #name").val($(data).attr("storeName"));
			$("#modalContactForm #id").val($(data).attr("id"));
			$("#modalContactForm #date").val($(data).attr("date"));
			$("#modalContactForm #contact").val($(data).attr("contact"));
			$("#modalContactForm #email").val($(data).attr("email"));
			$("#modalContactForm #city").val($(data).attr("city"));
			$("#modalContactForm #address").val($(data).attr("address"));
			$("#modalContactForm #store_image").attr("src",$(data).attr("path"));			
		}
		
		function deleteStore(data){
			var shopId = $(data).attr("id");
			const swalWithBootstrapButtons = Swal.mixin({
				  customClass: {
				    confirmButton: 'btn btn-success',
				    cancelButton: 'btn btn-danger'
				  },
				  buttonsStyling: false
				})
				swalWithBootstrapButtons.fire({
				  title: 'Are you sure?',
				  text: "Do You Really Want to Remove This Store?",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: 'Yes, Remove it!',
				  cancelButtonText: 'No, cancel!',
				  reverseButtons: true
				}).then((result) => {
					if (result.value) {
						$.ajax({
							type:'post',
							url:'/parim.live/admin/deleteStore',
					  	    data:{
					  	    	id:shopId
					  	    },
						    cache:false,
						    success:function(data){
							Swal.fire({
								  title: '<br><br><strong>Successfully Removed</strong>',
								  icon:'success',
								  html:'<center></center>',
								  showCloseButton: true,
								  showConfirmButton:true,
								  allowOutsideClick: true,
								  focusConfirm: false,
							}) 
						  },
						  error:function(){
							  Swal.fire({
								  icon: 'error',
								  title: 'Oops...',
								  text: 'Something went wrong!<br>Unable to Remove Right Now.',
								})
						  }
						});			
						
				  } else if (
				    /* Read more about handling dismissals below */
				    result.dismiss === Swal.DismissReason.cancel
				  ) {
				    swalWithBootstrapButtons.fire(
				      'Cancelled',
				      'You canceled the operation',
				      'info'
				    )
				  }
				})
		}
