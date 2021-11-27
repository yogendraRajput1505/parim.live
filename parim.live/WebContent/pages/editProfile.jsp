<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">

  <!-- Your custom styles (optional) -->
  <style>
    .card.card-cascade .view.gradient-card-header {
          padding: 1.1rem 1rem;
      }

      .card.card-cascade .view {
          box-shadow: 0 5px 12px 0 rgba(0, 0, 0, 0.2), 0 2px 8px 0 rgba(0, 0, 0, 0.19);
      }
      .backgroung-light-black{
		  background:#f5f5f5;
	  }
    </style>
</head>

<body class="fixed-sn white-skin backgroung-light-black">
	<!-- Header Section Starts -->    
	<section>
		<%@ include file="../header.jsp" %>
	</section>
	<!-- Header Section Ends -->
  <!-- Main layout -->
  <main>
    <div class="container-fluid">

      <!-- Section: Edit Account -->
      <section class="section">
        <!-- First row -->
        <div class="row">
          <!-- First column -->
          <div class="col-lg-4 mb-4">

            <!-- Card -->
            <div class="card card-cascade narrower">

              <!-- Card image -->
              <div class="view view-cascade gradient-card-header mdb-color lighten-3">
                <h5 class="mb-0 font-weight-bold">Edit Photo</h5>
              </div>
              <!-- Card image -->

              <!-- Card content -->
              <div class="card-body card-body-cascade text-center">
                <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg" alt="User Photo" class="z-depth-1 mb-3 mx-auto" />

                <p class="text-muted"><small>Profile photo will be changed automatically</small></p>
                <div class="row flex-center">
                  <button class="btn btn-info btn-rounded btn-sm">Upload New Photo</button><br>
                  <button class="btn btn-danger btn-rounded btn-sm">Delete</button>
                </div>
              </div>
              <!-- Card content -->

            </div>
            <!-- Card -->

          </div>
          <!-- First column -->

          <!-- Second column -->
          <div class="col-lg-8 mb-4">

            <!-- Card -->
            <div class="card card-cascade narrower">

              <!-- Card image -->
              <div class="view view-cascade gradient-card-header mdb-color lighten-3">
                <h5 class="mb-0 font-weight-bold">Edit Account</h5>
              </div>
              <!-- Card image -->

              <!-- Card content -->
              <div class="card-body card-body-cascade text-center">

                <!-- Edit Form -->
                <form>
                  <!-- First row -->

                  <div class="row">

                    <!-- First column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="text" name="userId" id="form1" class="form-control validate" value="This is my Id" disabled>
                        <label for="form1" data-error="wrong" data-success="right">Your Id</label>
                      </div>
                    </div>
                    <!-- Second column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="text" name="userName" id="form2" class="form-control validate">
                        <label for="form2" data-error="wrong" data-success="right">Username</label>
                      </div>
                    </div>
                  </div>
                  <!-- First row -->

                  <!-- First row -->
                  <div class="row">
                    <!-- First column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="number" name="phone" id="form81" class="form-control validate">
                        <label for="form81" data-error="wrong" data-success="right">Phone</label>
                      </div>
                    </div>

                    <!-- Second column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="text" name="email" id="form82" class="form-control validate">
                        <label for="form82" data-error="wrong" data-success="right">Email Address</label>
                      </div>
                    </div>
                  </div>
                  <!-- First row -->

                  <!-- Second row -->
                  <div class="row">

                    <!-- First column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="email" name="address" id="form76" class="form-control validate">
                        <label for="form76">Address</label>
                      </div>
                    </div>
                    <!-- Second column -->

                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="text" name="city" id="form77" class="form-control validate">
                        <label for="form77" data-error="wrong" data-success="right">City</label>
                      </div>
                    </div>
                  </div>
                  <!-- Second row -->

                  <!-- Second row -->
                  <div class="row">

                    <!-- First column -->
                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="email" name="pincode" id="form76" class="form-control validate">
                        <label for="form76">Pincode</label>
                      </div>
                    </div>
                    <!-- Second column -->

                    <div class="col-md-6">
                      <div class="md-form mb-0">
                        <input type="text" name="profession" id="form77" class="form-control validate">
                        <label for="form77" data-error="wrong" data-success="right">Your Profession</label>
                      </div>
                    </div>
                  </div>
                  <!-- Second row -->

                  <!-- Third row -->
                  <div class="row">

                    <!-- First column -->
<!--                     <div class="col-md-12">
                      <div class="md-form mb-0">
                        <textarea type="text" id="form78" class="md-textarea form-control" rows="3"></textarea>
                        <label for="form78">About me</label>
                      </div>
                    </div> -->
                  </div>
                  <!-- Third row -->

                  <!-- Fourth row -->
                  <div class="row">
                    <div class="col-md-12 text-center my-4">
                      <input type="submit" value="Update Account" class="btn btn-info btn-rounded">
                    </div>
                  </div>
                  <!-- Fourth row -->

                </form>
                <!-- Edit Form -->

              </div>
              <!-- Card content -->

            </div>
            <!-- Card -->

          </div>
          <!-- Second column -->

        </div>
        <!-- First row -->

      </section>
      <!-- Section: Edit Account -->
    </div>
  </main>
  <!-- Main layout -->
	
	<!-- Footer Ends-->
	<section>
		<footer class="page-footer font-small unique-color-dark mt-4">
			<%@ include file="../footer.jsp" %>
		</footer>
	</section>
	<!-- Footer Starts-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/mdb.min.js"></script>
  <!-- Custom scripts -->

  <script>
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
