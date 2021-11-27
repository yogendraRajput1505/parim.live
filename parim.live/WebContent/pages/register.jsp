
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-register</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">

    <!-- My Css -->
    <link rel="stylesheet" type="text/css" href="css/my/index.css">
</head>

<style>
html,
        body,
        header,
        .view {
           height: auto;
        }

        .registerFormDiv{
          margin-top: 80px;
        }

        @media (max-width: 740px) {
          html,
          body,
          header,
          .view {
            height: auto;
          }
          .registerFormDiv{
            margin-top: 100px;
          }
        }

        @media (min-width: 800px) and (max-width: 850px) {
          html,
          body,
          header,
          .view  {
            height: auto;
          }
          .registerFormDiv{
            margin-top: 100px;
          }
        }

        .intro-2 {
            background: url("http://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img%20(11).jpg")no-repeat center center;
            background-size: cover;
            height: inherit;
        }
        .top-nav-collapse {
            background-color: #3f51b5 !important;
        }
        .navbar:not(.top-nav-collapse) {
            background: transparent !important;
        }
        @media (max-width: 768px) {
            .navbar:not(.top-nav-collapse) {
                background: #3f51b5 !important;
            }
            .registerFormDiv{
              margin-top: 100px;
            }
        }
        @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #3f51b5!important;
            }
            .registerFormDiv{
              margin-top: 100px;
            }
        }

        .card {
            background-color: rgba(229, 228, 255, 0.2);
        }
        .md-form label {
            color: #ffffff;
        }
        h6 {
            line-height: 1.7;
        }
        

        .card {
            margin-top: 30px;
            /*margin-bottom: -45px;*/

        }

        .md-form input[type=text]:focus:not([readonly]),
        .md-form input[type=password]:focus:not([readonly]) {
            border-bottom: 1px solid #8EDEF8;
            box-shadow: 0 1px 0 0 #8EDEF8;
        }
        .md-form input[type=text]:focus:not([readonly])+label,
        .md-form input[type=password]:focus:not([readonly])+label {
            color: #8EDEF8;
        }

        .md-form .form-control {
            color: #fff;
        }
       

</style>

<body class="fixed-sn pink-skin">
    
  <!--Main Navigation-->
  	<section>
		<%@ include file="../header.jsp" %>
	</section>
    <!--Intro Section-->
    <section class="intro-2">
      <div class="mask rgba-stylish-strong h-100 d-flex justify-content-center align-items-center">
        <div class="container registerFormDiv mb-4">
          <div class="row">
            <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-lg-5">

              <!--Form with header-->
              <div class="card wow fadeIn" data-wow-delay="0.3s">
                <div class="card-body">

                  <!--Header-->
                  <div class="form-header purple-gradient">
                    <h3><i class="fas fa-user mt-2 mb-2"></i> Register</h3>
                  </div>

                  <!--Body-->
                  <div class="md-form">
                    <i class="fas fa-user prefix white-text"></i>
                    <input type="text" name="name" id="orangeForm-name" class="form-control">
                    <label for="orangeForm-name">Your name</label>
                  </div>
                  <div class="md-form">
                    <i class="fas fa-phone prefix white-text"></i>
                    <input type="text" name="phone" id="orangeForm-name" class="form-control">
                    <label for="orangeForm-name">Phone(Optional)</label>
                  </div>
                  <div class="md-form">
                    <i class="fas fa-envelope prefix white-text"></i>
                    <input type="text" name="email" id="orangeForm-email" class="form-control">
                    <label for="orangeForm-email">Your email</label>
                  </div>

                  <div class="md-form">
                    <i class="fas fa-lock prefix white-text"></i>
                    <input type="password" name="password" id="orangeForm-pass" class="form-control">
                    <label for="orangeForm-pass">New password</label>
                  </div>
                  <div class="md-form">
                    <i class="fas fa-lock prefix white-text"></i>
                    <input type="password" name="confirmPassword" id="orangeForm-pass" class="form-control">
                    <label for="orangeForm-pass">Confirm password</label>
                  </div>

                  <div class="text-center">
                    <button class="btn purple-gradient btn-lg">Register</button>
<!--                     <hr>
                    <div class="inline-ul text-center d-flex justify-content-center">
                      <a class="p-2 m-2 fa-lg tw-ic"><i class="fab fa-twitter white-text"></i></a>
                      <a class="p-2 m-2 fa-lg li-ic"><i class="fab fa-linkedin-in white-text"> </i></a>
                      <a class="p-2 m-2 fa-lg ins-ic"><i class="fab fa-instagram white-text"> </i></a>
                    </div> -->
                    
                    <div class="inline-ul text-center d-flex justify-content-center mt-4">
							<p>already registered? <a href="${pageContext.request.contextPath}/pages/login.jsp" style="color:#fff;"><u>Login Here</u></a></p>
                      </div>
                  </div>

                </div>
              </div>
              <!--/Form with header-->

            </div>
          </div>
        </div>
      </div>
    </section>
  <!--Main Navigation-->
  
	<section>
		<footer class="page-footer font-small unique-color-dark">
			<%@ include file="../footer.jsp" %>
		</footer>
	</section>
 
    <!-- SCRIPTS -->
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/mdb.min.js"></script>

    <script type="text/javascript">
	    new WOW().init();
    </script>
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
    </script>


</body>
</html>