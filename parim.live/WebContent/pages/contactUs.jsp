<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-Contact Us</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">
    
    <!-- My Css -->
    <link href="../css/my/all2.css" rel="stylesheet">
    
    <style>
    	.pink-skin .navbar{
    		background-color:var(--theme-color)!important;
    	}
    </style>
    
</head>

<body class="fixed-sn pink-skin light-theme-background">
	<!-- Header Section Starts -->    
	<section>
		<%@ include file="../header.jsp" %>
	</section>
	<!-- Header Section Ends -->

	<!-- Main PArt  -->
    <div class="container">
        <div class="row">
            <div class="col">
				<section class="contact-section mt-10 pb-5">
  			     <h1 class="h2-responsive font-weight-bold text-center pb-3 pt-3"><i class="fas fa-envelope pr-2"></i>Enquire Now</h1>
				 <p class="text-center mb-5 mx-auto w-responsive">
	              	If you have some Querry or problem regarding our product or Services, you can directly send us message.<br>
	              	We will solve your problem as soon as possible. 
	              		              	
	             </p>
				  <div class="card">
				    <div class="row">
				      <div class="col-lg-8">
				       <form id="contactUsForm">
				        <div class="card-body form">
				          <div class="row">
				            <div class="col-md-6">
				              <div class="md-form mb-0">
				                <input type="text" name="name" id="form-contact-name" class="form-control" onfocusout="nameValidation(this)">
				                <label for="form-contact-name" class="">Name</label>
				              </div>
				            </div>
				            <div class="col-md-6">
				              <div class="md-form mb-0">
				                <input type="email" name="email" id="form-contact-email" class="form-control" onfocusout="emailValidation(this)" >
				                <label for="form-contact-email" class="">Email</label>
				              </div>
				            </div>
				          </div>
				          <div class="row">
				            <div class="col-md-6">
				              <div class="md-form mb-0">
				                <input type="number" name="phone" id="form-contact-phone" class="form-control" onfocusout="phoneValidation(this)">
				                <label for="form-contact-phone" class="">Phone</label>
				              </div>
				            </div>
				            <div class="col-md-6">
				              <div class="md-form mb-0">
				                <input type="text" name="city" id="form-contact-company" class="form-control" onfocusout="nameValidation(this)">
				                <label for="form-contact-company" class="">City</label>
				              </div>
				            </div>			
				          </div>
				          <div class="row">
				            <div class="col-md-12">
				              <div class="md-form mb-0">
				                <textarea id="form-contact-message" name="message" class="form-control md-textarea" rows="3" onfocusout="textValidation(this)"></textarea>
				                <label for="form-contact-message">Message</label>
				                <a class="btn-floating btn-lg blue" onClick="submitContactUsForm()">
				                  <i class="far fa-paper-plane"></i>
				                </a>
				              </div>
				            </div>
				          </div>
				        </div>
				       </form>
				      </div>
				      <div class="col-lg-4">
				        <div class="card-body contact text-center h-100 white-text">				
				          <h3 class="my-4 pb-2">Contact information</h3>
				          <ul class="text-lg-left list-unstyled ml-4">
				            <li>
				              <p><i class="fas fa-map-marker-alt pr-2"> Shri ram plaza, 1st floor, k k nagar, sikandra, agra, U. P. India</i></p>
				            </li>
				            <li>
				              <p><i class="fas fa-phone pr-2"></i>+ 01 234 567 89</p>
				            </li>
				            <li>
				              <p><i class="fas fa-envelope pr-2"></i>info@parim.live</p>
				            </li>
				          </ul>
				          <hr class="hr-light my-4">
				          <ul class="list-inline text-center list-unstyled">
				            <li class="list-inline-item">
				              <a class="p-2 fa-lg tw-ic">
				                <i class="fab fa-twitter"></i>
				              </a>
				            </li>
				            <li class="list-inline-item">
				              <a class="p-2 fa-lg li-ic">
				                <i class="fab fa-linkedin-in"> </i>
				              </a>
				            </li>
				            <li class="list-inline-item">
				              <a class="p-2 fa-lg ins-ic">
				                <i class="fab fa-instagram"> </i>
				              </a>
				            </li>
				          </ul>
				        </div>				
				      </div>
				    </div>
				  </div>
				</section>
            </div>
        </div>
    </div>

	 <!-- Main PArt  -->
	<section>
		<footer class="page-footer font-small unique-color-dark mt-4">
			<%@ include file="../footer.jsp" %>
		</footer>
	</section>
 
    <!-- SCRIPTS -->
    <!-- JQuery -->
	<script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/mdb.min.js"></script>    
    <script src="../js/sweetalert2.1.2.min.js"></script>

	<!-- My Js -->
	<script type="text/javascript" src="../js/myJs/dataSecurity.js"></script>
	<script type="text/javascript" src="../js/myJs/contactUs.js"></script>
    <script >
    $(document).ready(function() {    	  
    	// SideNav Initialization
    	$(".button-collapse").sideNav();
    	  new WOW().init();
    	})
   		//Material Select
		$('.mdb-select').materialSelect({
	    });
  		//Animate On Scroll
	    AOS.init();
    </script>


</body>
</html>