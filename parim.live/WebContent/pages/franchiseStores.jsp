<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.FranchiseStore" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Parim-Franchise Stores</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/mdb.min.css" rel="stylesheet">

    <!-- My Css -->
    <link rel="stylesheet" type="text/css" href="css/my/index.css">
    <link href="../css/my/all2.css" rel="stylesheet">
    <style type="text/css">
      .mt-10{
		margin-top:80px;
	  }
	  .pink-skin .navbar{
    		background-color:var(--theme-color)!important;
    	}
    </style>
    
</head>

<body class="fixed-sn pink-skin background-light">
    
    <!-- Header Section Starts -->    
		<section>
			<%@ include file="../header.jsp" %>
		</section>
	<!-- Header Section Ends -->

    <div class="container">
        <div class="row">
            <div class="col">
                <!-- Section: Blog v.3 -->
				<section class="mt-10">
				
				  <!-- Section heading -->
				  <h2 class="h1-responsive font-weight-bold text-center my-5">Our Franchise Stores</h2>
				  <!-- Section description -->
				  <p class="text-center dark-grey-text w-responsive mx-auto mb-5">Became a part of our Growing Business.</p>
				
				  <!-- Grid row -->
				    <%
				    Session ses =null;
				  try{
					  ses= HibernateUtil.getSessionFactory().openSession();
					  Query userQuery  = ses.createQuery("from "+FranchiseStore.class.getName()+" c where storeType = :franchise");
					  userQuery.setParameter("franchise","franchise");
				      List rows = userQuery.list();
				      FranchiseStore sd = null;
						for(int i=0;i<rows.size();i++){
					    	sd=(FranchiseStore) rows.get(i);
		  			 %>
				  <div class="row text-left"  >
				    <div class="col-lg-5 col-xl-4">
				      <div class="view overlay rounded z-depth-1-half mb-lg-0 mb-4 waves-light" >
				        <img class="img-fluid" src="<%="../"+sd.getImagePath()%>" alt="Sample image">
				      </div>
				    </div>
				    <div class="col-lg-7 col-xl-8">
				      <h3 class="font-weight-bold mb-3"><strong><%=sd.getName()%></strong></h3>
				      <h6 class="font-weight-bold mb-3"><strong>City : </strong> <%=sd.getCity() %></h6>
   				      <h6 class="font-weight-bold mb-3"><strong>Contact : </strong> <%=sd.getPhone() %></h6>
				    </div>
				  </div>
  				  <hr class="my-5">
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
				  
				</section>
				<!-- Section: Blog v.3 -->
            </div>
        </div>
    </div>


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

       <!-- My JS -->
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

    <script type="text/javascript" src="js/myJs/index.js"></script>
</body>
</html>