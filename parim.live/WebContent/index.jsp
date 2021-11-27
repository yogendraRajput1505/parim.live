<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.GalleryImages,org.hibernate.cfg.Configuration,
				 org.hibernate.boot.registry.StandardServiceRegistryBuilder,org.hibernate.SessionFactory" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim.live</title>

   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/mdb.min.css" rel="stylesheet">

	<link href="OwlCarousel2-2.3.4\css\owl.carousel.min.css" rel="stylesheet">
    <link href="OwlCarousel2-2.3.4\css\owl.carousel.css" rel="stylesheet">
    <link href="OwlCarousel2-2.3.4\css\owl.theme.default.min.css" rel="stylesheet">
    <link href="css/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
    
    <!-- My Css -->
    <link rel="stylesheet" type="text/css" href="css/my/all2.css">
    <link rel="stylesheet" type="text/css" href="css/my/home.css">
    <link rel="stylesheet" type="text/css" href="css/my/loader.css">
	
	
    <style type="text/css">
      	 .gal-img-border{
      	 	border: 1px solid #505050;
		 /*box-shadow: 0 0 6px 1px #a5a5a5;*/
		 }
    </style>
</head>

<body class="fixed-sn pink-skin">
	<!-- Loader -->
	<section>
		<div id="loader-background">
			<div class="loader-background " ></div>
			<div class="loader  pt-3">
				<div class="loader-logo">
					<center><img src="images/logo/parim-logo-loder.jpg"  height="100px" width="200px" alt="Logo"/></center>
				</div>
				<div class="container-fluid mt-5">
					<div class="row loaderImage">
						<div class="col-12 pt-2">
							<img src="images/loader/loader4.webp" alt="Loader"/>	
						</div>
						<div class="col-12 text-dark mt-2">
							<center><h5>Please Wait...Website is getting ready</h2></centere>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col bg-dark p-1">
							<center class="font-vs">Design and Developed by- Yogendra Rajput</center>					
						</div>
					</div>
					
				</div>
			</div>
		</div>			
	</section>
	
	<!-- Background Fixed Image -->
	<section>
		<div class="background-fixed" ></div>
	</section>
	
	<!-- Header Section Starts -->    
	<section>
		<%@ include file="header.jsp" %>
	</section>
	<!-- Header Section Ends -->
	<!-- Slider Section Starts -->
	<section>
		<!--Carousel Wrapper-->
		<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
		  <!--Indicators-->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-2" data-slide-to="1"></li>
		    <li data-target="#carousel-example-2" data-slide-to="2"></li>
		  </ol>
		  <!--/.Indicators-->
		  <!--Slides-->
		  <div class="carousel-inner" role="listbox">
		    <div class="carousel-item active">
		      <div class="view">
		        <img class="d-block " src="images/home/mainSlider/mainSlider1.jpg"
		          alt="First slide">
		        <div class="mask rgba-black-slight"></div>
		      </div>
		      <div class="carousel-caption">
		        <h3 class="h3-responsive">THE SHOE THAT ADAPTS TO YOU</h3>
		        <p>STREET STYLE</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <!--Mask color-->
		      <div class="view">
		        <img class="d-block " src="images/home/mainSlider/mainSlider2.jpg"
		          alt="Second slide">
		        <div class="mask rgba-black-slight"></div>
		      </div>
		      <div class="carousel-caption">
		        <h3 class="h3-responsive">Strong mask</h3>
		        <p>Secondary text</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <!--Mask color-->
		      <div class="view">
		        <img class="d-block " src="images/home/mainSlider/mainSlider3.jpg"
		          alt="Third slide">
		        <div class="mask rgba-black-slight"></div>
		      </div>
		      <div class="carousel-caption">
		        <h3 class="h3-responsive">Slight mask</h3>
		        <p>Third text</p>
		      </div>
		    </div>
		  </div>
		  <!--/.Slides-->
		  <!--Controls-->
		  <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		  <!--/.Controls-->
		</div>
		<!--/.Carousel Wrapper-->					
	</section>
	<!-- Slider Section Ends -->

	<!-- Latest Shoes  -->
	 <section>
        <div class="container-fluid pt-5 light-theme-background">
            <div class="row  p-md-3" data-aos="fade-up"  data-aos-duration="1500">
            	<div class="col-12 pl-4">
            		<h3>Latest Shoes</h3>
            	</div>
            
                <div class="col-12 mt-1">    
                    <div class="carousel-wrap">
                        <div class="owl-carousel latest-shoes owl-theme">
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/latestCollection/top1.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top1.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>  
                            <div class="item">
                                <a data-size="1600x1067" href="images/home/latestCollection/top2.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top2.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/latestCollection/top3.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top3.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                            <div class="item">
                              	<a data-size="1600x1067" href="images/home/latestCollection/top4.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top4.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                            <div class="item">
								<a data-size="1600x1067" href="images/home/latestCollection/top5.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top5.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                            <div class="item">
								<a data-size="1600x1067" href="images/home/latestCollection/top6.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top6.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                            <div class="item">
								<a data-size="1600x1067" href="images/home/latestCollection/top7.jpg" data-toggle="lightbox" data-gallery="gallery-latest">
	                                <img src="images/home/latestCollection/top7.jpg" />
	                                <!--  <span class="img-text">Shoe 1</span>-->
	                            </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- Latest Shoes Ends -->

	<!-- Top Shoes -->
	 <section>
        <div class="container-fluid pt-4 light-theme-background">
            <div class="row p-md-3" data-aos="fade-up"  data-aos-duration="1500">
            	<div class="col-12 pl-4">
            		<h3>Top	 Shoes</h3>
            	</div>
            
                <div class="col mt-1">    
                    <div class="carousel-wrap">
                        <div class="owl-carousel top-shoes owl-theme">
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top1.jpg" data-toggle="lightbox" data-gallery="gallery-top">
	                              <img src="images/home/topCollection/top1.jpg" />
	                              <!--<span class="img-text">Shoe 1</span>  -->
	                            </a>
                            </div>  
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top2.jpg" data-toggle="lightbox" data-gallery="gallery-top">
                    	          <img src="images/home/topCollection/top2.jpg" />
                        	      <!--<span class="img-text">Shoe 2</span>-->
                        	    </a>
                            </div>
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top3.jpg" data-toggle="lightbox" data-gallery="gallery-top">
	                              <img src="images/home/topCollection/top3.jpg" />
	                             <!-- <span class="img-text">Shoe 3</span>-->
	                             </a>
                            </div>
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top4.jpg" data-toggle="lightbox" data-gallery="gallery-top">
    	                          <img src="images/home/topCollection/top4.jpg" />
        	                      <!-- <span class="img-text">Shoe 4</span>-->
        	                    </a>
                            </div>
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top5.jpg" data-toggle="lightbox" data-gallery="gallery-top">
	                              	<img src="images/home/topCollection/top5.jpg" />
	                             	<!-- <span class="img-text">Shoe 5</span>-->
	                             </a>
                            </div>
                            <div class="item">
	                            <a data-size="1600x1067" href="images/home/topCollection/top6.jpg" data-toggle="lightbox" data-gallery="gallery-top">
	                              <img src="images/home/topCollection/top6.jpg" />
	                              <!--<span class="img-text">Shoe 6</span>-->
	                             </a>
                            </div>
                            <div class="item">
                           		 <a data-size="1600x1067" href="images/home/topCollection/top7.jpg" data-toggle="lightbox" data-gallery="gallery-top">
                           		     <img src="images/home/topCollection/top7.jpg" />
                             		 <!--<span class="img-text">Shoe 7</span>-->
                             	 </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- Top Shoes Ends -->

	<!-- Gallery Starts -->
	<section class="background-light pb-4">
		<div class="container">
			<div class="row">
			  <div class="col-md-12 mt-5">
			  	<center>
			  		<h3 class="h1-responsive font-weight-bold">Our Collection</h3>
			  		<a href="pages/myGallery.jsp"><button class="btn btn-md  bg-info">View All</button></a>
			  	</center>
			  </div>				
			  <div class="col-md-12">
			    <div id="mdb-lightbox-ui"></div>
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
            			  int size=rows.size();
            			  if(rows.size()>12){
            				  size=9;
            			  }
            			  
            			  for(int i=0;i<size;i++){
          			    	  sd=(GalleryImages) rows.get(i);
                      %>
                      	 <figure class="col-md-3 col-6 animation all <%=sd.getShoeUser() %>" >
	                      <a data-size="1600x1067" href="<%=sd.getImagePath() %>" data-toggle="lightbox" data-gallery="gallery-my">
	                        <img src="<%=sd.getImagePath() %>" alt="image" class="img-fluid theme-border light-box-shadow" />
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
		</div>
	</section>
	<!-- Gallery Ends -->

	<!-- Size Chart Starts -->
	<section>
		<div class="container-fluid sizeChart pt-4 light-theme-background">
			<div class="row" >
				<div class="col">
					<center><h3 class="h1-responsive font-weight-bold">Don't Know Your Size?</h3></center>			
				</div>
			</div>
			<!-- Men Size Table -->
			<div class="row " data-aos="fade-right" data-aos-duration="1500">
				<div class="offset-md-1 col-md-4 mt-2 mb-1">
					<h3>Men's Size</h3>
				</div>
				<div class="offset-md-1 col-md-10">
					<div class="table-responsive table-hover">
					  <table class="table">
					    <tbody>
					      <tr>
					        <th>cm</th>
					        <th>23.5</th>
					        <th>24.4</th>
					        <th>25.4</th>
					        <th>25</th>
					        <th>27</th>
					        <th>27.9</th>
					        <th>28.6</th>
					        <th>29.4</th>
					      </tr>
					      <tr>
					        <td>EU</td>
					        <td>39</td>
					        <td>40</td>
					        <td>41</td>
					        <td>42</td>
					        <td>43</td>
					        <td>44</td>
					        <td>45</td>
					        <td>46</td>
					      </tr>
					      <tr>
					        <td>UK</td>
					        <td>5.5</td>
					        <td>6.5</td>
					        <td>7.5</td>
					        <td>8.5</td>
					        <td>9.5</td>
					        <td>10.5</td>
					        <td>11.5</td>
					        <td>12.5</td>
					      </tr>
					      <tr>
					      	<td>US/IND</td>
					        <td>6</td>
					        <td>7</td>
					        <td>8</td>
					        <td>9</td>
					        <td>10</td>
					        <td>11</td>
					        <td>12</td>
					        <td>13</td>
					      </tr>
					    </tbody>
					  </table>
					</div>
				</div>
			</div>
			<!-- women Size Table -->
			<div class="row" data-aos="fade-up" data-aos-duration="1500">
				<div class="offset-md-1 col-md-5 mt-2 mb-1">
					<h3>Women's Size</h3>
				</div>
				<div class="offset-md-1 col-md-10">
					<div class="table-responsive table-hover">
					  <table class="table">
					    <tbody>
					      <tr>
					        <th>cm</th>
					        <th>23.5</th>
					        <th>24.4</th>
					        <th>25.4</th>
					        <th>25</th>
					        <th>27</th>
					        <th>27.9</th>
					        <th>28.6</th>
					        <th>29.4</th>
					      </tr>
					      <tr>
					        <td>EU</td>
					        <td>35</td>
					        <td>36</td>
					        <td>37</td>
					        <td>38</td>
					        <td>39</td>
					        <td>40</td>
					        <td>41</td>
					        <td></td>
					      </tr>
					      <tr>
					        <td>UK</td>
					        <td>2</td>
					        <td>3</td>
					        <td>4</td>
					        <td>5</td>
					        <td>6</td>
					        <td>7</td>
					        <td>8</td>
					        <td></td>
					      </tr>
					      <tr>
					      	<td>US</td>
					        <td>4</td>
					        <td>5</td>
					        <td>6</td>
					        <td>7</td>
					        <td>8</td>
					        <td>9</td>
					        <td>10</td>
					        <td>46</td>
					      </tr>
					    </tbody>
					  </table>
					</div>
				</div>
			</div>
			
			<!-- Kids Size Table -->
			<div class="row " data-aos="fade-up" data-aos-duration="1500">
				<div class="offset-md-1 col-md-4 mt-2 mb-1">
					<h3>Kids's Sneakers</h3>
				</div>
				<div class="offset-md-1 col-md-10">
					<div class="table-responsive table-hover">
					  <table class="table">
					    <tbody>
					      <tr>
					        <th>cm</th>
					        <th>23.5</th>
					        <th>24.4</th>
					        <th>25.4</th>
					        <th>25</th>
					        <th>27</th>
					        <th>27.9</th>
					        <th>28.6</th>
					        <th>29.4</th>
					      </tr>
					      <tr>
					        <td>EU</td>
					        <td>39</td>
					        <td>40</td>
					        <td>41</td>
					        <td>42</td>
					        <td>43</td>
					        <td>44</td>
					        <td>45</td>
					        <td>46</td>
					      </tr>
					      <tr>
					        <td>EU</td>
					        <td>39</td>
					        <td>40</td>
					        <td>41</td>
					        <td>42</td>
					        <td>43</td>
					        <td>44</td>
					        <td>45</td>
					        <td>46</td>
					      </tr>
					      <tr>
					      	<td>EU</td>
					        <td>39</td>
					        <td>40</td>
					        <td>41</td>
					        <td>42</td>
					        <td>43</td>
					        <td>44</td>
					        <td>45</td>
					        <td>46</td>
					      </tr>
					    </tbody>
					  </table>
					</div>
				</div>
			</div>
			
		</div>		
	</section>
	<!-- Size Chart Starts -->
	
	<!-- Blog Posts-->
<!--  		</%@ include file="blogPosts.jsp" %>-->
	<!-- Blog Posts -->	
	
	<!-- Testimonial Starts -->
	<section class="light-theme-background pb-5">	
		<div class="container ">
	        <div class="row">
	            <div class="col text-center">
	                <!-- Section heading -->
	                <h2 class="h1-responsive font-weight-bold my-5">Testimonials</h2>
	                <!-- Section description -->
	                <p class="dark-grey-text w-responsive mx-auto mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
	                  Fugit, error amet numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam
	                  eum porro a pariatur veniam.</p>
	
	                <!-- Grid row -->
	                <div class="row">
	
	                  <!--Grid column-->
	                  <div class="col-lg-4 col-md-12 mb-lg-0 mb-4" data-aos="flip-left" data-aos-duration="2000">
	                    <!--Card-->
	                    <div class="card testimonial-card">
	                      <!--Background color-->
	                      <div class="card-up info-color"></div>
	                      <!--Avatar-->
	                      <div class="avatar mx-auto white">
	                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" class="rounded-circle img-fluid">
	                      </div>
	                      <div class="card-body">
	                        <!--Name-->
	                        <h4 class="font-weight-bold mb-4">John Doe</h4>
	                        <hr>
	                        <!--Quotation-->
	                        <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Lorem ipsum dolor sit amet eos
	                          adipisci, consectetur adipisicing elit.</p>
	                      </div>
	                    </div>
	                    <!--Card-->
	                  </div>
	                  <!--Grid column-->
	
	                  <!--Grid column-->
	                  <div class="col-lg-4 col-md-6 mb-md-0 mb-4" data-aos="flip-left" data-aos-duration="2000">
	                    <!--Card-->
	                    <div class="card testimonial-card">
	                      <!--Background color-->
	                      <div class="card-up blue-gradient">
	                      </div>
	                      <!--Avatar-->
	                      <div class="avatar mx-auto white">
	                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="rounded-circle img-fluid">
	                      </div>
	                      <div class="card-body">
	                        <!--Name-->
	                        <h4 class="font-weight-bold mb-4">Anna Aston</h4>
	                        <hr>
	                        <!--Quotation-->
	                        <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Neque cupiditate assumenda in
	                          maiores repudiandae mollitia architecto.</p>
	                      </div>
	                    </div>
	                    <!--Card-->
	                  </div>
	                  <!--Grid column-->
	
	                  <!--Grid column-->
	                  <div class="col-lg-4 col-md-6" data-aos="flip-left" data-aos-duration="2000">
	                    <!--Card-->
	                    <div class="card testimonial-card">
	                      <!--Background color-->
	                      <div class="card-up indigo"></div>
	                      <!--Avatar-->
	                      <div class="avatar mx-auto white">
	                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle img-fluid">
	                      </div>
	                      <div class="card-body">
	                        <!--Name-->
	                        <h4 class="font-weight-bold mb-4">Maria Kate</h4>
	                        <hr>
	                      <!--Quotation-->
	                        <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Delectus impedit saepe officiis
	                          ab aliquam repellat rem unde ducimus.</p>
	                      </div>
	                    </div>
	                    <!--Card-->
	                  </div>
	                  <!--Grid column-->
	
	                </div>
	                <!-- Grid row -->
	            </div>
	        </div>
	    </div>
	 
	
	</section>
	<!-- Testimonial Ends -->
	
	<!-- Footer Ends-->
	<section>
		<footer class="page-footer font-small unique-color-dark">
			<%@ include file="footer.jsp" %>
		</footer>
	</section>
	<!-- Footer Starts-->
		
    <!-- SCRIPTS -->    
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.min.js"></script>
    
    <script type="text/javascript" src="OwlCarousel2-2.3.4\js\owl.carousel.js"></script>
    <script type="text/javascript" src="OwlCarousel2-2.3.4\js\owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js" ></script>
    <script src="js/aos.js"></script>
    <!-- My JS -->
    <script>
        
    $(document).ready(function() {
    	
    	//remove loader    	
    	sleep(1000).then(() => {
      	    $("#loader-background").hide();
    	})
    
    	// SideNav Initialization
    	$(".button-collapse").sideNav();
    	  new WOW().init();
    	})
   		//Material Select
		$('.mdb-select').materialSelect({
	    });
  		//Animate On Scroll
	    AOS.init();
  		
    	function sleep(ms) {
  	      return new Promise(resolve => setTimeout(resolve, ms));
  	   }
	    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox();
        });
    </script>
    	 
    
    <script type="text/javascript" src="js/myJs/home.js"></script>
</body>
</html>