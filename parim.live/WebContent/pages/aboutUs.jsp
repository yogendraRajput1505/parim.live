
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-About Us</title>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">
    
    
</head>

<body class="fixed-sn pink-skin">
  <!-- Main Navigation -->

	<section>
		<%@ include file="../header.jsp" %>
	</section>

        <!-- Intro Section -->
        <div id="home" class="view jarallax" data-jarallax='{"speed": 0.2}' style="background-image: url(../images/home/fixedImage/fixedImage-2.jpg); background-repeat: no-repeat; background-size: cover; background-position: center center;">
          <div class="mask rgba-stylish-light">
            <div class="container h-100 d-flex justify-content-center align-items-center">
                <div class="row pt-5 mt-3">
                    <div class="col-md-12 mb-3">
                        <div class="intro-info-content text-center">
                            <h1 class="display-3 white-text mb-5 wow fadeInDown" data-wow-delay="0.3s">ABOUT <a class="white-text font-weight-bold">US</a></h1>
                            <h5 class="text-uppercase white-text mb-5 mt-1 font-weight-bold wow fadeInDown" data-wow-delay="0.3s">
                            	Parim is your place for lifestyle,casual, daily wearing and official shoes for the entire family. PARIM has a vast collection of all
                            	types of shoes for Men's, Women's, Kids.
                            </h5>
                            <!--  <a class="btn btn-light-blue btn-lg wow fadeInDown" data-wow-delay="0.3s">portfolio</a>
                            <a class="btn btn-indigo btn-lg wow fadeInDown" data-wow-delay="0.3s">About</a>-->
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>

    <!-- Main Navigation -->

    <!-- Main Layout -->
    <main class="pt-5">
        <div class="container">
			<section>
				<div class="container">
					<div class="row">
						<div class="col ">
							<h2 class="font-weight-bold text-center h2 mb-5">A Short Note</h2>
							 <p class="grey-text text-center mb-5 ">
								Parim is your place for lifestyle,casual, daily wearing and official shoes for the entire family. PARIM has a vast collection of all
                            	types of shoes for Men's, Women's, Kids.We aim to provide the best quality shoes with affordable price.You can Explore our all range of 
                            	shoes.Take your pick from an array of Sports,Casual,Formal,Synthetic,Leather Sandal,Leather Slipper, Loafers and Canvas shoes in vibrant
                            	colors like red, yellow, green, blue,brown,black,grey,olive,pink,beige,white etc. Designed for Top Performance, these shoes match with your
                            	lifestyle. Available in materials like leather,canvas, suede leather, faux leather,mesh etc, these Shoes are lightweight, comfortable, sturdy
                            	and extremely sporty. The sole of all PARIM shoes is designed to provide an  increased amount of comfort and the material is good enough to 
                            	provide an improved fit. These Shoes are Easy to maintain and last for  a really long time given to their durability.                            	 
							 </p>
						</div>
					</div>
				</div>
			</section>
        </div>
    </main>
    
    <section>
    	<div class="container">
    		<div class="row mb-5">
    			<div class="col">
    			 <hr class="my-5">
			     <h2 class="h1-responsive font-weight-bold text-center mb-5">Our Other Works</h2>
				  <div class="row">
				    <div class="col-lg-5 col-xl-4">			    
				      <div class="view overlay rounded z-depth-1-half mb-lg-0 mb-4 waves-light" mdbWavesEffect>
				        <img class="img-fluid" src="../images/interior-design.png" alt="Sample image">
				        <a>
				          <div class="mask rgba-white-slight"></div>
				        </a>
				      </div>
				    </div>
				    <div class="col-lg-7 col-xl-8">
				      <h3 class="font-weight-bold mb-3"><strong>Interior Design</strong></h3>
				      <p class="dark-grey-text"><b>INTERIOR DESIGN</b> is making the best possible Use of the <b>AVAILABLE SPACE.</b><br>
				      	
				      </p>
				      <p>by <a class="font-weight-bold"></a>, 16/04/2018</p>
				    </div>
				  </div>
    			</div>
    		</div>
    	</div>
    </section>
    <!-- Main Layout -->
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
	    // MDB Lightbox Init
	    $(function () {
	        $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
	    });        	  
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