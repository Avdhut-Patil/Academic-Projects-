<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		 <link rel="icon" href="images/logo.png" type="image/png">
		<title>Hair Studio</title>
		<!-- Loading third party fonts -->
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		

	</head>

	<body class="homepage header-collapse">

		<div id="site-content">
			
			<header class="site-header">
				<div class="container">
					<a id="branding" href="index.jsp">
						<img src="images/logo.png" alt="Hair Studio" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">Hair Studio</h1>
							<small class="site-description">Hair & Beauty LTD.</small>
						</div>
					</a> <!-- #branding -->

					
					<!-- Default snippet for navigation -->
					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class  ="menu-item current-menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item"><a href="about.jsp">About</a></li>
							<li class="menu-item"><a href="service.jsp">Services</a></li>
							<li class="menu-item"><a href="contact.jsp">Contact</a></li>
                                                       <li class="menu-item"><a href="login.jsp">Login</a></li>
                                                       
                                                        
						</ul>  <!-- .menu -->
					</div> <!-- .main-navigation -->
                                        
                               
                                        
                                        

					<div class="mobile-navigation"></div>
				</div>
			</header>
			
			<div class="hero hero-slider">
				<ul class="slides">
					<li data-bg-image="dummy/slider-1.jpg">
						<div class="container">
							<h3 class="slider-subtitle">Our customers become our brand Ambassadors...</h3>
							<h2 class="slider-title">Professional</h2>
							
						</div>
					</li>
					<li data-bg-image="dummy/slider-2.jpg">
						<div class="container">
                                                    
							<h3 class="slider-subtitle">Our customers become our brand Ambassadors...</h3>
							<h2 class="slider-title">Professional</h2>
							
						</div>
					</li>
					<li data-bg-image="dummy/slider-3.jpg">
						<div class="container">
							<h3 class="slider-subtitle">Our customers become our brand Ambassadors...</h3>
							<h2 class="slider-title">Professional</h2>
							
						</div>
					</li>
				</ul>
			</div>

			<main class="main-content">
				
				<div class="fullwidth-block features-section">
					<div class="container">
						<h2 class="section-title">our Services</h2>
						<div class="row">
							<div class="col-md-3">
								<div class="feature">
									<img src="images/icon-1.png" class="feature-image">
									<h3 class="feature-title">Facial</h3>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<img src="images/icon-2.png" class="feature-image">
									<h3 class="feature-title">Hair</h3>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<img src="images/icon-3.png" class="feature-image">
									<h3 class="feature-title">Beard</h3>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<img src="images/icon-4.png" class="feature-image">
									<h3 class="feature-title">Nail Art</h3>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block.features-section -->

				<div class="fullwidth-block team-section">
					<div class="container">
						<h2 class="section-title">Our team</h2>
						<div class="row">
							<div class="col-md-3">
								<div class="team">
									<figure class="team-image"><img src="dummy/person-1@2x.jpg"></figure>
									<h3 class="team-name">Advika</h3>
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-google-plus"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="team">
									<figure class="team-image"><img src="dummy/person-2.jpg"></figure>
									<h3 class="team-name">Brinda</h3>
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-google-plus"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="team">
									<figure class="team-image"><img src="dummy/person-3.jpg"></figure>
									<h3 class="team-name">Jasmine</h3>
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-google-plus"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="team">
									<figure class="team-image"><img src="dummy/person-4.jpg"></figure>
									<h3 class="team-name">Prisha</h3>
									<div class="social-links">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-google-plus"></i></a>
									</div>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block.team-section -->

			</main>

			<%@include file="footer.jsp" %>
		</div>
		

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>