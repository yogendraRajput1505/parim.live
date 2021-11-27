<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.GalleryImages,org.hibernate.cfg.Configuration,
				 org.hibernate.boot.registry.StandardServiceRegistryBuilder,org.hibernate.SessionFactory" %>
<% if(session.getAttribute("id")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-Admin</title>
    <link rel="icon" href="../images/favicon/favicon1.png">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/mdb.min.css" rel="stylesheet">
	
    <link href="https://mdbootstrap.com/previews/templates/admin-dashboard/css/addons/datatables-select.min.css" rel="stylesheet">
	<link href="https://mdbootstrap.com/previews/templates/admin-dashboard/css/addons/datatables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
    
	<link rel="stylesheet" type="text/css" href="../css/my/all2.css">
    <style type="text/css">
  		.mdb-lightbox figure img{
			width:100%;
			height:216px;
		}
		.removeImage{
  			position: absolute;
		    bottom: 9px;
		    left: 3.6%;
		    background: var(--theme-color);
		    width: 93%;
		    border-radius: 8px;
		    color:#fff!important;
		    text-align:center;
		    padding:2px;
		    display:none;
  		}
		
		.ekko-lightbox-container{
		/*	width:500px !important;*/
			height:	450px !important;
		}
		
		
		.img-fluid{
			height:100%;
		}
		
		@media(max-width:600px){
			.btn{
				padding:12px;
			}
			
			.removeImage{
				position: absolute;
			    bottom: 9px;
			    left: 5%;
			    background: var(--theme-color);
			    width: 90%;
			    border-radius: 8px;
			}	
			.ekko-lightbox-container{
				height:	270px !important;
			}		
		}
		@media(min-width:950px){
  			.table-responsive{
  				display:table;
  			}
  		}
  		
  		.removeImage:hover{
  			cursor: pointer;
 			background: var(--dark-theme-color);
  		}
  		#gallery figure:hover .removeImage{
  			display:block;
  		}
  		
  		/*/add Image Popup*/
  		.modal-header .galleryImage{
  			width:220px!important;
  		}
    </style>
</head>

<body class="fixed-sn pink-skin mt-5 light-theme-background">
	<!-- Header Section Starts -->    
	<section>
		<%@ include file="header.jsp" %>
	</section>
	<!-- Header Section Ends -->
	
	<!-- Main Section -->
    <main>
        <div class="container">
            <!-- Section: Team v.3 -->
            <section id="team" class="section team-section pb-4" data-wow-delay="0.3s">
                <!-- Section heading -->
              	<!--  <h2 class="font-weight-bold text-center h1 my-5">Our Gallery</h2> -->
                <!-- Section description -->
              <p class="text-center h3 mb-5 mx-auto w-responsive">
              	Images in Gallery 
              </p>
                <!-- Grid column -->
			  <div class="col-md-12 d-flex justify-content-center mb-5">
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="all">All</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="men">Men</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="women">Women</button>
			    <button type="button" class="btn btn-outline-red waves-effect filter" data-rel="kids">Kids</button>
			    <a href="#" data-toggle="modal" data-target="#modalLoginAvatar">
			    	<button type="button" class="btn btn-outline-red waves-effect" onClick="uploadNewImagePopup(this)">Add new Image
			    </button></a>
			    
			  </div>
			  <!-- Grid column -->
              <div class="row" id="gallery">
                <div class="col-md-12">
                  <div class="mdb-lightbox">
                      <% 
                      Session ses = null;
                      try{
            			  ses = HibernateUtil.getSessionFactory().openSession();
            			  /*Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
            		      StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
            		      applySettings(configuration.getProperties());
            		      SessionFactory sf = configuration.buildSessionFactory(builder.build());
            		      Session ses = sf.openSession();*/
            		      
            			  Query userQuery  = ses.createQuery("from "+GalleryImages.class.getName());
            		      List rows = userQuery.list();
            		      GalleryImages sd = null;
            			  System.out.println(rows.size());
            			  for(int i=0;i<rows.size();i++){
          			    	  sd=(GalleryImages) rows.get(i);
                      %>
                      	 <figure class="col-md-3 col-6 animation all <%=sd.getShoeUser() %>" >
	                      <a data-size="1600x1067" href="<%="../"+sd.getImagePath() %>" data-toggle="lightbox" data-gallery="gallery-my">
	                        <img src="<%="../"+sd.getImagePath() %>" alt="image"
	                          class="img-fluid theme-border light-box-shadow" />
	                      </a>
	                      <div class="removeImage" onclick="deleteImage(this)" imagePath="<%=sd.getImagePath()%>" imageId="<%=sd.getId()%>">
	 							<i class="fas fa-trash"></i>                          
	                      </div>
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
    
    <section>
		<div class="modal fade" id="modalLoginAvatar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		  aria-hidden="true">
		  <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document">
		    <div class="modal-content">
		      <div class="modal-header m-0">
		        <img id="shoesPhoto" src="https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg" alt="avatar" class="img-responsive galleryImage">
		      </div>
		      <div class="modal-body mb-1">
		        <form id="addGalleryImagesForm" enctype="multipart/form-data">
			        <h5 class="mt-1 mb-2">Select Gallery Image</h5>
			        <div class="md-form ml-0 mr-0">
			          <input type="file" name="galleryImage" id="form29" class="form-control form-control-sm validate ml-0" onchange="readPhotoURL(this);">
			        </div>
			        <div class="md-form ml-0 mr-0">
			          <div class="form-check">
			              	For:<br>
						  <input type="radio" class="form-check-input" id="materialChecked1" name="shoeUser" checked value="kids">
						  <label class="form-check-label" for="materialChecked1">Kids</label>
		
						  <input type="radio" class="form-check-input" id="materialChecked2" name="shoeUser" value="men">
						  <label class="form-check-label" for="materialChecked2">Men</label>

  						  <input type="radio" class="form-check-input" id="materialChecked3" name="shoeUser" value="women">
						  <label class="form-check-label" for="materialChecked3">Women</label>
						</div>
			        </div>
			        <div class="text-center mt-4">
			          <button type="button" class="btn btn-cyan mt-1" onClick="addImageInGallery('addGalleryImagesForm')">Add <i class="fas fa-sign-in ml-1"></i></button>
			        </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
    </section>
    
	<!-- Main Section -->
	
	<!-- Header Section Starts -->    
	<section class="pt-4">
		<%@ include file="footer.jsp" %>
	</section>
	<!-- Header Section Ends -->
	

    <!-- SCRIPTS -->    
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.min.js"></script>
	<script type="text/javascript" src="js/sweetalert2.1.2.min.js"></script>

    <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables.min.js"></script>
    <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables-select.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js" ></script>
      <!-- My JS -->
    <script type="text/javascript" src="js/myJs/galleryImages.js"></script>
    
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
    
    <script>
    //required Script 
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
 		
 // Material Select Initialization
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });
    </script>
    
</body>
</html>