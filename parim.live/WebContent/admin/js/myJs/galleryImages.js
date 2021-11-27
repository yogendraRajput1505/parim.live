function deleteImage(data){
	var imagePath = $(data).attr("imagePath");
	var imageId = $(data).attr("imageId");
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
					url:'/parim.live/admin/deleteImage',
			  	    data:{
			  	    	id:imageId,
			  	    	path:imagePath
			  	    },
				    cache:false,
				    success:function(data){
					Swal.fire({
						  title: '<br><br><strong>Removed</strong>',
						  icon:'success',
						  html:'<center>Image is Removed</center>',
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
						  text: 'Something went wrong!<br>Unable to remove Image Right Now.',
						})
				  }
				});			
				
		  } else if (
		    /* Read more about handling dismissals below */
		    result.dismiss === Swal.DismissReason.cancel
		  ) {
		    swalWithBootstrapButtons.fire(
		      'Cancelled',
		      'Image is not Removed',
		      'info'
		    )
		  }
		})
}

	//Our Js
function readPhotoURL(input) {
	   if (input.files && input.files[0]) {
	      var reader = new FileReader();

	        reader.onload = function (e) {
	            $('#shoesPhoto')
	                .attr('src', e.target.result)
	                .width(220)
	                .height(180);
	        };

	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	function addImageInGallery(idOfForm){
		 var form = $("#"+idOfForm)[0];
		 var datastring = new FormData(form);
		 sendRequestToAddImages(datastring);
	}
	
	function sendRequestToAddImages(datastring){
		$.ajax({
			type:'post',
			enctype: 'multipart/form-data',
			url:'/parim.live/admin/addGalleryImages',
	  	    data:  datastring	,
	  	    processData: false,
	        contentType: false,
		    cache:false,
		    success:function(data){
			Swal.fire({
				  title: '<br><br><strong>Added</strong>',
				  icon:'success',
				  html:'<center>Custom Product is Successfully Added </center>',
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
				  text: 'Something went wrong!<br>Product is not Successfully Added.',
				  footer: '<a href="#">Why do I have this issue?Report Problem</a>'
				})
		  }
		});
	}