<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.FranchiseStore,org.hibernate.cfg.Configuration,
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
	
    <!-- My Css -->
    <link rel="stylesheet" type="text/css" href="css/my/all2.css">
    <style type="text/css">
      .hide{
            display: none;
        }
        .image-upload{
            border-radius: 50%;
            width: 45px;
            height: 45px;
            position: absolute;
            right: 25%;
            bottom: 9%;
            border:1px solid #000; 
            background-color: #fff;
        }
        .image-upload img{
            position: relative;
            left: 11px;
            bottom: 3px;    
            width: 25px;
        }
        .image-upload:hover{
            cursor: pointer;
        }

        @media(max-width: 600px){
            .image-upload{
                width: 30px;
                height: 30px;
            }
            .image-upload img{
                left: 6px;
                bottom: 10px;
                width: 19px;
            }

        }
    </style>
</head>

<body class="fixed-sn pink-skin light-theme-background">
	
	<!-- Header Section Starts -->    
	<section>
		<%@ include file="header.jsp" %>
	</section>
	<!-- Header Section Ends -->
	<br><br>

	<!--Section: Author Box-->	
	  <div class="container pb-5">
        <div class="row">
            <div class="col">
                <!-- Section: Blog v.3 -->
				<section class="mt-10" style="text-align:center;">
				  <!-- Section heading -->
				  <h2 class="h1-responsive font-weight-bold text-center mt-5">WholeSale Stores</h2>
				  <div class="text-center">
			          <a href="#" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalContactForm" style="background:var(--theme-color)!important;">Add new</a>
			      </div>
				  <hr class="my-5">
				  <!-- Grid row -->
				  
				  <%
				  Session ses = null;
				  try{
					  ses = HibernateUtil.getSessionFactory().openSession();
					  /*Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
				      StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
				      applySettings(configuration.getProperties());
				      SessionFactory sf = configuration.buildSessionFactory(builder.build());
				      Session ses = sf.openSession();*/
				      
					  Query userQuery  = ses.createQuery("from "+FranchiseStore.class.getName()+" c where storeType = :wholesaler");
					  userQuery.setParameter("wholesaler","wholesaler");
				      List rows = userQuery.list();
				      FranchiseStore sd = null;
					  System.out.println(rows.size());
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
				      <p class="font-weight-bold mb-3"><strong>Id : </strong> <%=sd.getId() %></p>
				      <h6 class="font-weight-bold mb-3"><strong>City : </strong> <%=sd.getCity() %></h6>
   				      <h6 class="font-weight-bold mb-3"><strong>Contact : </strong> <%=sd.getPhone() %></h6>
   				      <h6 class="font-weight-bold mb-3"><strong>Email : </strong> <%=sd.getEmail() %></h6>
     			      <h6 class="font-weight-bold mb-3"><strong>Address : </strong> <%=sd.getAddress() %></h6>
     			     
				      <button class="btn btn-sm" style="color:var(--theme-color);" data-toggle="modal" data-target="#modalContactForm"
				      	 id="<%=sd.getId() %>"             email="<%=sd.getEmail() %>" 
				      	 city="<%=sd.getCity() %>"         address="<%=sd.getAddress() %>"  
				      	 contact="<%=sd.getPhone() %>"     date=""
				      	 storeName="<%=sd.getName() %>"    path="<%=sd.getImagePath() %>"
				         onClick="updateFormToEdit(this)">Edit</button>
				      
				      <button class="btn btn-sm" style="color:var(--theme-color);" id="<%=sd.getId() %>" onClick="deleteStore(this)">Remove</button>
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
    
	<!-- Add new Store POPUP -->
	<section>
		<div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
          aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
             <form id="addStoreForm" enctype="multipart/form-data">
              <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Add a store</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body mx-3">
                <div class="md-form m-2 " style="text-align: center;">
                    <img id="store_image" src="https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg" alt="Upload Store Image" class="rounded-circle img-responsive" width="50%">
                    <div class="image-upload">
                      <label for="file-input" >
                        <img src="https://icon-library.net/images/upload-photo-icon/upload-photo-icon-21.jpg" alt="icon"/>
                      </label>
                      <input id="file-input" type="file" name="storePhoto" class="hide" onchange="readPhotoURL(this);"/>
                    </div>
                </div>
                <div class="md-form">
	              <div class="form-check">
	              	Store Type<br>
				    <input type="radio" class="form-check-input" id="materialChecked1" name="storeType" checked value="wholesaler">
				    <label class="form-check-label" for="materialChecked1">WholeSaler</label>
				    <input type="radio" class="form-check-input" id="materialChecked2" name="storeType" value="franchise">
				    <label class="form-check-label" for="materialChecked2">Franchise</label>
				    <input type="radio" class="form-check-input" id="materialChecked3" name="storeType" value="seller">
				    <label class="form-check-label" for="materialChecked3">Seller</label>
				  </div>
 	            </div>
                <div class="md-form mb-5">
                  <i class="fas fa-user prefix grey-text"></i>
                  <input type="hidden" name="id" id="id" value="">
                  <input type="hidden" name="date" id="date" value="">
                  <input type="text" name="name" id="name" class="form-control validate mb-3">
                  <label data-error="wrong"  data-success="right" for="name">Store Name</label>
                </div>
                <div class="md-form mb-5">
                  <i class="fas fa-envelope prefix grey-text"></i>
                  <input type="number" name="contact" id="contact" class="form-control validate mb-3">
                  <label data-error="wrong" data-success="right" for="contact">Contact</label>
                </div>
                <div class="md-form mb-5">
                  <i class="fas fa-tag prefix grey-text"></i>
                  <input type="email" name="email" id="email" class="form-control validate mb-3">
                  <label data-error="wrong" data-success="right" for="email">Email</label>
                </div>
                <div class="md-form mb-5">
                  <i class="fas fa-tag prefix grey-text"></i>
                  <input type="text" name="city" id="city" class="form-control validate mb-3">
                  <label data-error="wrong" data-success="right" for="city">City</label>
                </div>
                <div class="md-form">
                  <i class="fas fa-pencil prefix grey-text"></i>
                  <textarea type="text" name="address" id="address" class="md-textarea form-control" rows="2"></textarea>
                  <label data-error="wrong" data-success="right" for="address">Address</label>
                </div>
              </div>
              <div class="modal-footer d-flex justify-content-center">
                <input class="btn btn-unique" type="button" onClick="addStore('addStoreForm')" value="Add Store"><i class="fas fa-paper-plane-o ml-1"></i>
              </div>
             </form>
            </div>
          </div>
        </div>
	</section>

	<!-- Add new Store POPUP Ends-->
	<section>
		<%@ include file="footer.jsp" %>
	</section>
	
    <!-- SCRIPTS -->    
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script src="js/sweetalert2.1.2.min.js"></script>
        
    <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables.min.js"></script>
    <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables-select.min.js"></script>
    
       
    <!-- My JS -->
    <script src="js/myJs/fran_store.js"></script>
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
	   // AOS.init();
   </script>

</body>
</html>