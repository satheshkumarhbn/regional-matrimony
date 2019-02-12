<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="resources/clientassets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="<c:url value="resources/clientassets/vendor/nucleo/css/nucleo.css" />" rel="stylesheet">
  <link href="<c:url value="resources/clientassets/vendor/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="<c:url value="resources/clientassets/css/argon.css" />" rel="stylesheet">
  <!-- Docs CSS -->
  <link type="text/css" href="<c:url value="resources/clientassets/css/docs.min.css" />" rel="stylesheet">
</head>

<body>
	<tag:url value="/getAllProfiles" var="urlGetAllProfiles"/>
	<tag:url value="/profile/G1900001" var="urlProfile"/>
	<!-- HEADER -->
	<header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="./index.html">
          <img src="resources/clientassets/img/brand/white.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="./index.html">
                  <img src="resources/clientassets/img/brand/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <!--<ul class="navbar-nav navbar-nav-hover align-items-lg-center">
			
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection d-lg-none"></i>
                <span class="nav-link-inner--text">Examples</span>
              </a>
              <div class="dropdown-menu">
                <a href="./examples/landing.html" class="dropdown-item">Landing</a>
                <a href="./examples/profile.html" class="dropdown-item">Profile</a>
                <a href="./examples/login.html" class="dropdown-item">Login</a>
                <a href="./examples/register.html" class="dropdown-item">Register</a>
              </div>
            </li>
          </ul>-->
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center ml-lg-auto">
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection d-lg-none"></i>
                <span class="nav-link-inner--text">Matches</span>
              </a>
              <div class="dropdown-menu">
                <a href="./examples/landing.html" class="dropdown-item">New Matches</a>
                <a href="./examples/profile.html" class="dropdown-item">Suggested Matches</a>
                <a href="./examples/login.html" class="dropdown-item">Recently viewed</a>
                <a href="./examples/register.html" class="dropdown-item">Shortlisted</a>
                <a href="${urlGetAllProfiles }" class="dropdown-item">All Profiles</a>
                <a href="${urlProfile }" class="dropdown-item">View Profile</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-ui-04 d-lg-none"></i>
                <span class="nav-link-inner--text">Search By</span>
              </a>
              <div class="dropdown-menu dropdown-menu-xl">
                <div class="dropdown-menu-inner">
                  <div class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-primary rounded-circle text-white">
                      <i class="ni ni-spaceship"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h6 class="heading text-primary mb-md-1">Member Id</h6>
                      <form action="" method="post">
                      	<div class="form-group">
			              <input type="text" placeholder="member id" class="form-control form-control-alternative" />
			            </div>
			            <button class="btn btn-sm btn-primary" type="button">Search</button>
              		  </form>
                    </div>
                  </div>
                  <div class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-success rounded-circle text-white">
                      <i class="ni ni-palette"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h6 class="heading text-primary mb-md-1">Mobile Number</h6>
                      <div class="card-body card-block">
							<form action="searchByMemberId" method="post" class="form-horizontal">
								<div class="row form-group">
									<div class="col col-md-12">
										<div class="input-group">
											<input type="text" id="memberid" name="memberid"
												placeholder="Member ID" class="form-control">
											<div class="input-group-btn">
												<button class="btn btn-primary">Search</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
                    </div>
                   </div>
                  <a href="https://demos.creative-tim.com/argon-design-system/docs/components/alerts.html" class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-warning rounded-circle text-white">
                      <i class="ni ni-ui-04"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h5 class="heading text-warning mb-md-1">Components</h5>
                      <p class="description d-none d-md-inline-block mb-0">Browse our 50 beautiful handcrafted components offered in the Free version.</p>
                    </div>
                  </a>
                </div>
              </div>
            </li>
			<li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection d-lg-none"></i>
                <span class="nav-link-inner--text">Success Stories</span>
              </a>
			</li>
			<li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection d-lg-none"></i>
                <span class="nav-link-inner--text">Help</span>
              </a>
              <div class="dropdown-menu">
                <a href="./examples/landing.html" class="dropdown-item">New Matches</a>
                <a href="./examples/profile.html" class="dropdown-item">Suggested Matches</a>
                <a href="./examples/login.html" class="dropdown-item">Recently viewed</a>
                <a href="./examples/register.html" class="dropdown-item">Shortlisted</a>
              </div>
            </li>
			<li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-ui-04 d-lg-none"></i>
                
				<span class="btn-inner--icon">
                  <i class="fa fa-heartbeat mr-2"></i>
				  <span class="nav-link-inner--text">Wishlist</span>
                </span>
				
              </a>
              <div class="dropdown-menu dropdown-menu-xl">
                <div class="dropdown-menu-inner">
                  <a href="https://demos.creative-tim.com/argon-design-system/docs/getting-started/overview.html" class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-primary rounded-circle text-white">
                      <i class="ni ni-spaceship"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h6 class="heading text-primary mb-md-1">Getting started</h6>
                      <p class="description d-none d-md-inline-block mb-0">Learn how to use Argon compiling<br> Scss, change brand colors and more.</p>
                    </div>
                  </a>
                  <a href="https://demos.creative-tim.com/argon-design-system/docs/foundation/colors.html" class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-success rounded-circle text-white">
                      <i class="ni ni-palette"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h6 class="heading text-primary mb-md-1">Foundation</h6>
                      <p class="description d-none d-md-inline-block mb-0">Learn more about colors, typography, icons<br> and the grid system we used for Argon.</p>
                    </div>
                  </a>
                  <a href="https://demos.creative-tim.com/argon-design-system/docs/components/alerts.html" class="media d-flex align-items-center">
                    <div class="icon icon-shape bg-gradient-warning rounded-circle text-white">
                      <i class="ni ni-ui-04"></i>
                    </div>
                    <div class="media-body ml-3">
                      <h5 class="heading text-warning mb-md-1">Components</h5>
                      <p class="description d-none d-md-inline-block mb-0">Browse our 50 beautiful handcrafted <br>components offered in the Free version.</p>
                    </div>
                  </a>
                </div>
              </div>
            </li>
			<li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-ui-04 d-lg-none"></i>
                <!---->
				<span class="btn-inner--icon">
                  <i class="fa fa-user-circle mr-2"></i>
				  <span class="nav-link-inner--text">Sathesh</span>
                </span>
				
              </a>
              <div class="dropdown-menu">
                <a href="./examples/landing.html" class="dropdown-item">My Profile</a>
                <a href="./examples/profile.html" class="dropdown-item">Edit Profile</a>
                <a href="./examples/login.html" class="dropdown-item">Change Password</a>
                <a href="./examples/register.html" class="dropdown-item">Logout</a>
              </div>
            </li>
			<!--<li class="nav-item">
              <a class="nav-link nav-link-icon" href="https://www.facebook.com/creativetim" target="_blank" data-toggle="tooltip" title="Like us on Facebook">
                <i class="fa fa-facebook-square"></i>
                <span class="nav-link-inner--text d-lg-none">Facebook</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="https://www.instagram.com/creativetimofficial" target="_blank" data-toggle="tooltip" title="Follow us on Instagram">
                <i class="fa fa-instagram"></i>
                <span class="nav-link-inner--text d-lg-none">Instagram</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="https://twitter.com/creativetim" target="_blank" data-toggle="tooltip" title="Follow us on Twitter">
                <i class="fa fa-twitter-square"></i>
                <span class="nav-link-inner--text d-lg-none">Twitter</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="https://github.com/creativetimofficial/argon-design-system" target="_blank" data-toggle="tooltip" title="Star us on Github">
                <i class="fa fa-github"></i>
                <span class="nav-link-inner--text d-lg-none">Github</span>
              </a>
            </li>-->
          </ul>
        </div>
      </div>
    </nav>
  </header>
	<!-- /NAVIGATION -->

	<!-- jQuery Plugins -->
  <script src="resources/clientassets/vendor/jquery/jquery.min.js"></script>
  <script src="resources/clientassets/vendor/popper/popper.min.js"></script>
  <script src="resources/clientassets/vendor/bootstrap/bootstrap.min.js"></script>
  <script src="resources/clientassets/vendor/headroom/headroom.min.js"></script>
  <!-- Optional JS -->
  <script src="resources/clientassets/vendor/onscreen/onscreen.min.js"></script>
  <script src="resources/clientassets/vendor/nouislider/js/nouislider.min.js"></script>
  <script src="resources/clientassets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
  <!-- Argon JS -->
  <script src="resources/clientassets/js/argon.js?v=1.0.1"></script>
</body>

</html>