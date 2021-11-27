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

.pink-skin .navbar{
	background:var(--theme-color);
}
</style>

  <header>
    <!-- Sidebar navigation -->
    <div id="slide-out" class="side-nav fixed wide sn-bg-1">
      <ul class="custom-scrollbar">
        <!-- Logo -->
        <li>
          <div class="logo-wrapper sn-ad-avatar-wrapper">
            <a href="#"><img src="../images/logo/logo-header.jpg" class="rounded-circle" style="height:45px;"><span>PARIM</span></a>
          </div>
          
        </li>
        <!--/. Logo -->
        <!-- Side navigation links -->
        <li>
          <ul class="collapsible collapsible-accordion">
            
           <li><a class="collapsible-header waves-effect arrow-r"><i class="sv-slim-icon far fa-user"></i>Admin<i class="fas fa-angle-down rotate-icon"></i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="logout.jsp" class="waves-effect">
                    <span class="sv-slim"> <i class="fas fa-sign-out-alt"></i> </span>
                    <span class="sv-normal">Logout</span></a>
                  </li>
                </ul>
              </div>
            </li>
            <li><a class="collapsible-header waves-effect arrow-r" href="enquiries.jsp"> Enquiry</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="galleryImages.jsp"> Gallery Images</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="fran_Request.jsp"> Franchise Request</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="whole_Request.jsp"> Wholesaler Request</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="fran_Store.jsp"> Franchise Store</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="whole_Store.jsp"> Wholesaler Store</a></li>
            <li><a class="collapsible-header waves-effect arrow-r" href="sellers.jsp"> Sellers</a></li> 
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
        <p>PARIM</p>
      </div>

<!-- Search BAr -->      	
      <!--  <div class="breadcrumb-dn header-search-bar mr-auto hideInMobile">
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
      </div>-->
      
      <ul class="nav navbar-nav nav-flex-icons ml-auto hideInMobile">
        <li class="nav-item">
          <a class="nav-link" href="enquiries.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">Enquiry</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="galleryImages.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">Gallery Images</span></a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Other Pages
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
             <a class="nav-link" href="fran_Request.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">Franchise Request</span></a>
             <a class="nav-link" href="whole_Request.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">WholeSaler and Seller Request</span></a>
             
             <a class="nav-link" href="fran_Store.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">Franchise Stores</span></a>
             <a class="nav-link" href="whole_Store.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">WholeSaler Stores</span></a>
             <a class="nav-link" href="sellers.jsp"><i class=""></i> <span class="clearfix d-none d-sm-inline-block">Sellers</span></a>
          </div>
        </li>       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Admin
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="logout.jsp">Logout</a>
          </div>
        </li>
                
      </ul>
    </nav>
    <!-- /.Navbar -->
  </header>
