<style>
.double-nav .breadcrumb-dn {
    color: #fff;
}
.side-nav.wide.slim .sn-ad-avatar-wrapper a span {
  display: none;
}

.searchBarForm1{
	width:94%;
	margin:3%;
}
.searchBarForm2{
	width:350px;
}

.select-wrapper input.select-dropdown{
	margin:0px;
}

.navbar-nav .nav-items{
	margin-left:5px;
	margin-right:5px;
}

@media only screen and (max-width: 860px) {
	.hideInMobile{
		display:none;
	}
}

@media (max-width:993px){
	.showInMobile{
		display:block !important;
	}

}
/*More Changes in Header*/

.pink-skin .navbar{
	background-color: transparent;
}

.pink-skin .top-nav-collapse{
	background-color:#a50e31;
}

.sn-bg-1{
	background-image:url(https://mdbootstrap.com/img/Photos/Others/sidenav1.jpg);
}
.pink-skin .side-nav .sidenav-bg:after{
	background:#a50e31d6;	
}
</style>

  <header>
    <!-- Sidebar navigation -->
    <div id="slide-out" class="side-nav fixed wide sn-bg-1">
      <ul class="custom-scrollbar">
        <!-- Logo -->
        <li>
          <div class="logo-wrapper sn-ad-avatar-wrapper">
            <a href="#"><img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle"><span>PARIM</span></a>
          </div>

<!--          <div class="breadcrumb-dn header-search-bar mr-auto hideInMobile">
			<form class="form-inline md-form m-0">
			  <select class="mdb-select searchBarForm1 colorful-select dropdown-primary" searchable="Search here..">
			  	  <option value="" disabled selected> Search Product</option>	
			   	  <option value="1">Shoes Brand 1</option>
				  <option value="2">Shoes Brand 2</option>
				  <option value="3">Shoes Brand 3</option>
				  <option value="4">Shoes Brand 4</option>
				  <option value="5">Shoes Brand 5</option>
			  </select>
 			  <button class="btn aqua-gradient btn-rounded btn-sm my-0" type="submit">Search</button>
			</form>
	     </div> -->
	     
        </li>
        <!--/. Logo -->
        <!-- Side navigation links -->
        <li>
          <ul class="collapsible collapsible-accordion">
            
           <!-- <li><a class="collapsible-header waves-effect arrow-r"><i class="sv-slim-icon far fa-envelope"></i> Yogendra Rajput<i class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="#" class="waves-effect">
                    <span class="sv-slim"> <i class="fas fa-portrait"></i> </span>
                    <span class="sv-normal">My Profile</span></a>
                  </li>
                  <li><a href="#" class="waves-effect">
                    <span class="sv-slim"> <i class="fa fa-edit"></i> </span>
                    <span class="sv-normal">Edit Profile</span></a>
                  </li>
                  <li><a href="#" class="waves-effect">
                    <span class="sv-slim"> <i class="fas fa-sign-out-alt"></i> </span>
                    <span class="sv-normal">Logout</span></a>
                  </li>
                </ul>
              </div>
            </li>-->
            <li>
            	<a class="collapsible-header waves-effect arrow-r " href="${pageContext.request.contextPath}/pages/franchiseContact.jsp">
            		<button class="btn btn-sm btn-info mb-2" style="width:80%;">Grow With Us</button>
            	</a>
            </li>
            <li><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/index.jsp"><i class="sv-slim-icon fas fa-home"></i> Home</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/pages/myGallery.jsp"><i class="sv-slim-icon fas fa-images"></i> Gallery</a></li>
           <!--   <li><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/pages/myBlog.jsp"><i class="sv-slim-icon fab fa-blogger-b"></i>Blog</a></li>-->
            <li><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/pages/contactUs.jsp"><i class="sv-slim-icon far fa-envelope"></i> Enquiry</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/pages/aboutUs.jsp"><i class="sv-slim-icon fas fa-info-circle"></i> About Us</a></li>
            <l1><a class="collapsible-header waves-effect arrow-r" href="${pageContext.request.contextPath}/pages/franchiseStores.jsp"><i class="sv-slim-icon fas fa-info-circle"></i> Our Franchise Stores</a></l1>
            
            <li><a id="toggle" class="waves-effect"><i class="sv-slim-icon fas fa-angle-double-left"></i>Minimize menu</a></li>
          </ul>
        </li>
        <!--/. Side navigation links -->
      </ul>
      <div class="sidenav-bg rgba-blue-strong"></div>
    </div>
    <!--/. Sidebar navigation -->
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
      <!-- SideNav slide-out button -->
      <div class="float-left">
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="fas fa-bars"></i></a>
      </div>
      <!-- Breadcrumb-->
      <div class="breadcrumb-dn showInMobile mr-auto">
        <p><img src="${pageContext.request.contextPath}/images/logo/logo-header.png" height="50" width="125"></img></p>
      </div>

<!-- Search BAr -->
<!--       	
      <div class="breadcrumb-dn header-search-bar mr-auto hideInMobile">
		<form class="form-inline md-form m-0">
		  <select class="mdb-select searchBarForm2 colorful-select dropdown-primary" searchable="Search here..">
			  <option value="" disabled selected> Search Product</option>	
		   	  <option value="1">Shoes Brand 1</option>
			  <option value="2">Shoes Brand 2</option>
			  <option value="3">Shoes Brand 3</option>
			  <option value="4">Shoes Brand 4</option>
			  <option value="5">Shoes Brand 5</option>
		  </select>
		  <button class="btn aqua-gradient btn-rounded btn-sm my-0" style="margin-left: 15px;"  type="submit">Search</button>
		</form>
      </div>
      --> 
      
      <ul class="nav navbar-nav nav-flex-icons ml-auto hideInMobile">
      	<li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp"><i class="fas fa-home"></i> <span class="clearfix d-none d-sm-inline-block">Home</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/pages/myGallery.jsp"><i class="fas fa-images"></i> <span class="clearfix d-none d-sm-inline-block">Gallery</span></a>
        </li>
        <!--  <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/pages/myBlog.jsp"><i class="fab fa-blogger-b"></i> <span class="clearfix d-none d-sm-inline-block">Blog</span></a>
        </li>-->
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/pages/contactUs.jsp"><i class="fas fa-envelope"></i> <span class="clearfix d-none d-sm-inline-block">Enquiry</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/pages/aboutUs.jsp"><i class="fa fa-info-circle"></i> <span class="clearfix d-none d-sm-inline-block">About Us</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/pages/franchiseStores.jsp"><i class="fa fa-store"></i> <span class="clearfix d-none d-sm-inline-block">Our Franchise Stores</span></a>
        </li>
       
       <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Yogendra Rajput
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">About Me</a>
            <a class="dropdown-item" href="#">Edit Details</a>
            <a class="dropdown-item" href="#">Logout</a>
          </div>
        </li>-->
         
        
        <li class="nav-item">	
          <a class="nav-link p-0" href="${pageContext.request.contextPath}/pages/franchiseContact.jsp">
          	<button class="btn btn-sm btn-info m-0 ml-2">Grow With Us</button>
          </a>
        </li>
        
      </ul>
    </nav>
    <!-- /.Navbar -->
  </header>
