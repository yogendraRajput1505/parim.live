<%@ page import="hibernate.HibernateUtil,org.hibernate.Session,java.util.List,org.hibernate.Query,database.FranchiseRequest,org.hibernate.cfg.Configuration,
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
    <link rel="stylesheet" type="text/css" href="css/my/home.css">
    <link rel="stylesheet" type="text/css" href="css/my/all2.css">
    <style type="text/css">
      
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
	<section class="my-5">
	  <div class="container ">
  		<div class="row">
  			<div class="col-md-12">
  				<center><h2>WholeSaler and Seller Request</h2></center>
  			</div>
  		</div>
  		
  		<div class="row m-0">
			<div class="col-md bg-white border mt-4 border-rounded" >
				<table id="dtMaterialDesignExample" class="table table-responsive" cellspacing="0" width="100%">
				  <thead>
				    <tr>
				      <th class="th-sm">Id
				      </th>
				      <th class="th-sm">Name
				      </th>
				      <th class="th-sm">Email
				      </th>
				      <th class="th-sm">Contact
				      </th>
				      <th class="th-sm">City
				      </th>
				      <th class="th-sm">Message
				      </th>
				      <th class="th-sm">Date
				      </th>
				      <th class="th-sm">Request For
				      </th>
				  </thead>
				  <tbody>
				  <%Session ses =null;
					  try{
					  ses = HibernateUtil.getSessionFactory().openSession();
						/*  Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
				          StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
				          applySettings(configuration.getProperties());
				          SessionFactory sf = configuration.buildSessionFactory(builder.build());
				          Session ses = sf.openSession();*/
					  Query userQuery  = ses.createQuery("from "+FranchiseRequest.class.getName()+" c where requestType = :requestType OR requestType = :requestType2");
					  userQuery.setParameter("requestType","wholesaler");
					  userQuery.setParameter("requestType2","seller");
				      List rows = userQuery.list();
					  FranchiseRequest sd = null;
						for(int i=0;i<rows.size();i++){
					    	sd=(FranchiseRequest) rows.get(i);%>
							<tr>
						      <td><%=sd.getId() %></td>
						      <td><%=sd.getName() %></td>
						      <td><%=sd.getEmail() %></td>
						      <td><%=sd.getPhone() %></td>
						      <td><%=sd.getCity() %></td>
						      <td><%=sd.getMessage() %></td>
						      <td><%=sd.getEnquiryDate() %></td>
						      <td><%=sd.getRequestType() %></td>
						    </tr>
            			<% }
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
				    
				  </tbody>
				</table>
			</div>		
		</div>	
  		</div>
		
	</section>
	<!--Section: Author Box-->
	
	
	<section>
		<%@ include file="footer.jsp" %>
	</section>
	
    <!-- SCRIPTS -->    
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.min.js"></script>
    
        <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables.min.js"></script>
    <script type="text/javascript" src="https://mdbootstrap.com/previews/templates/admin-dashboard/js/addons/datatables-select.min.js"></script>
    
        <script type="text/javascript" src="js/myJs/home.js"></script>
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
   	    <script>
 // Material Design example
    $(document).ready(function () {
      $('#dtMaterialDesignExample').DataTable();
      $('#dtMaterialDesignExample_wrapper').find('label').each(function () {
        $(this).parent().append($(this).children());
      });
      $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('input').each(function () {
        const $this = $(this);
        $this.attr("placeholder", "Search");
        $this.removeClass('form-control-sm');
      });
      $('#dtMaterialDesignExample_wrapper .dataTables_length').addClass('d-flex flex-row');
      $('#dtMaterialDesignExample_wrapper .dataTables_filter').addClass('md-form');
      $('#dtMaterialDesignExample_wrapper select').removeClass('custom-select custom-select-sm form-control form-control-sm');
      $('#dtMaterialDesignExample_wrapper select').addClass('mdb-select');
      $('#dtMaterialDesignExample_wrapper .mdb-select').materialSelect();
      $('#dtMaterialDesignExample_wrapper .dataTables_filter').find('label').remove();
    });
 
 // Material Select Initialization
    $(document).ready(function() {
    	$('.mdb-select-2').materialSelect();
    });
    </script>
    

</body>
</html>