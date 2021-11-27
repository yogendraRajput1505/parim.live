<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.GalleryImages,org.hibernate.cfg.Configuration,
				 org.hibernate.boot.registry.StandardServiceRegistryBuilder,org.hibernate.SessionFactory" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-Gallery</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
    <!--<link href="../css/aos.css" rel="stylesheet">-->
    <!-- My Css -->
	<link rel="stylesheet" type="text/css" href="../css/my/all2.css">
	
    <style type="text/css">
      	.mdb-lightbox figure img{
			width:100%;
			height:216px;
		}
		.ekko-lightbox-container{
		/*	width:500px !important;*/
			height:	450px !important;
		}
		
		@media(max-width:600px){
			.btn{
				padding:12px;
			}			
			.ekko-lightbox-container{
				height:	270px !important;
			}
		}
		
		.img-fluid{
			height:100%;
		}
    </style>
</head>

<body class="fixed-sn pink-skin background-transparent-light">
    	<!-- Header Section Starts -->    
		<section>
			<%@ include file="../header.jsp" %>
		</section>
	<!-- Header Section Ends -->

	  <!-- Intro Section -->
        <div id="home" class="view jarallax" data-jarallax='{"speed": 0.2}' style="background-image: url(../images/home/fixedImage/fixedImage-2.jpg); background-repeat: no-repeat; background-size: cover; background-position: center center;">
          <div class="mask rgba-stylish-light">
            <div class="container h-100 d-flex justify-content-center align-items-center">
                <div class="row pt-5 mt-3">
                    <div class="col-md-12 mb-3">
                        <div class="intro-info-content text-center">
                            <h1 class="display-3 white-text mb-5 wow fadeInDown" data-wow-delay="0.3s">OUR <a class="white-text font-weight-bold">GALLERY</a></h1>
                            <!--  <h5 class="text-uppercase white-text mb-5 mt-1 font-weight-bold wow fadeInDown" data-wow-delay="0.3s">Lorem ipsum dolor sit amet consectetur. </h5>
                            <a class="btn btn-light-blue btn-lg wow fadeInDown" data-wow-delay="0.3s">portfolio</a>
                            <a class="btn btn-indigo btn-lg wow fadeInDown" data-wow-delay="0.3s">About</a>-->
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>

    <!-- Main Navigation -->
		
    <main>
        <div class="container">
            <!-- Section: Team v.3 -->
            <section id="team" class="section team-section pb-4" data-wow-delay="0.3s">
                <!-- Section heading -->
              	<!--  <h2 class="font-weight-bold text-center h1 my-5">Our Gallery</h2> -->
                <!-- Section description -->
              <p class="text-center grey-text mb-5 mx-auto w-responsive">
              	Place some Content about Gallery.
              </p>
                <!-- Grid column -->
			  <div class="col-md-12 d-flex justify-content-center mb-5">
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="all">All</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="men">Men</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="women">Women</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="kids">Kids</button>
			  </div>
			  <!-- Grid column -->
              <div class="row" id="gallery">
                <div class="col-md-12">
                  <div class="mdb-lightbox">                    
                      <% 
                      Session ses = null;
                      try{
            			  ses = HibernateUtil.getSessionFactory().openSession();
            			  /* Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
				          StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
				          applySettings(configuration.getProperties());
				          SessionFactory sf = configuration.buildSessionFactory(builder.build());
				          ses = sf.openSession(); */
				          
            			  Query userQuery  = ses.createQuery("from "+GalleryImages.class.getName());
            		      List rows = userQuery.list();
            		      GalleryImages sd = null;
            			 
            			  for(int i=0;i<rows.size();i++){
          			    	  sd=(GalleryImages) rows.get(i);
                      %>
                      	 <figure class="col-md-3 col-6 animation all <%=sd.getShoeUser() %>" >
	                      <a data-size="1600x1067" href="<%="../"+sd.getImagePath() %>" data-toggle="lightbox" data-gallery="gallery-my" data-width="600">
	                        <img src="<%="../"+sd.getImagePath() %>" alt="image" class="img-fluid theme-border light-box-shadow" />
	                      </a>
	                    </figure>
	                     
                      <%
            			 }
		      			}
		      			catch(Exception e){
		      				e.printStackTrace();
		      			}
                        finally{
                            if(ses!=null){
                                ses.close();
                            }
                        }
                      
                      %>
                    
                    
                    
                  </div>
                </div>
              </div>
            </section>
            <!-- Section: Team v.3 -->
        </div>
    </main>




<!-- Footer Ends-->
	<section>
		<footer class="page-footer font-small unique-color-dark mt-4">
			<%@ include file="../footer.jsp" %>
		</footer>
	</section>
	<!-- Footer Starts-->

    <!-- SCRIPTS -->
    
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/mdb.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js" ></script>
	<!--  <script src="../js/aos.js"></script>-->
 
    <script>
        $(function() {
            var selectedClass = "";
            $(".filter").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#gallery").fadeTo(100, 0.1);
            $("#gallery figure").not("."+selectedClass).fadeOut().removeClass('animation');
            setTimeout(function() {
            $("."+selectedClass).fadeIn().addClass('animation');
            $("#gallery").fadeTo(300, 1);
            }, 300);
            });
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
  			
	    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox();
        });
    </script>

    <script type="text/javascript" src="js/myJs/index.js"></script>
</body>
</html>