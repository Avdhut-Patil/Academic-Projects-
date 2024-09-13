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
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>

		<div id="site-content">
			
			<header class="site-header">
				<div class="container">
					<a id="branding" href="index.jsp">
						<img src="images/logo.png" alt="Hair Studio" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">Hair Studio</h1>
							<small class="site-description">Hair & Beauty LTD.</small>
						</div>
					</a>  <!-- #branding -->

					
					<!-- Default snippet for navigation -->
					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item current-menu-item"><a href="about.jsp">About</a></li>
							<li class="menu-item"><a href="service.jsp">Services</a></li>
							<li class="menu-item"><a href="contact.jsp">Contact</a></li>
                                                       
                                                        <li class="menu-item"><a href="login.jsp">Login</a></li>
						</ul> <!-- .menu -->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>

			<main class="main-content">
				<div class="page">
					<div class="container">
						<p>In present system you have to call the salon to fix an appointment. After taking an appointment you have to remember the date of the appointment. User is also not able to find the best salon in their locality. He can find out the services of any salon only after taking their services. But in proposed system you can check review online and find out who is giving best services. Use can also check that which salon gives good customer satisfaction.In current system salon take appointment on register. They manage customer record on register.Hair Studio allow salon to manage stylists and services, promote sales to customers, and track customer satisfaction.</p>

						<div class="row">
							<div class="col-md-4">
								<h3 class="section-title">About</h3>
								<figure><img src="dummy/figure-1.jpg" alt=""></figure>
								<h4>HAIR STUDIO - The Best Unisex Salon.</h4>
                                                                <p>Our salon is popular amoung teenagers of sangli, kolhapur and satara district.</p>
							</div>
							<div class="col-md-4">
								<h3 class="section-title">Passion</h3>
                                                                <br>
                                                                
								<h4>Release All The Tension From Your Body And Heal Your Soul.</h4>
                                                                <br>
                                                                <h4>Indulge Yourself In A Spa Getaway That Soothes The Body And Mind.</h4>
								</div>
							<div class="col-md-4">
								<h3 class="section-title">Team</h3>
								<div class="row">
									<div class="col-md-6">
										<div class="team small">
											<figure class="team-image"><img src="dummy/person-1.jpg"></figure>
											<h3 class="team-name">Advika</h3>
											
										</div>
										<div class="team small">
											<figure class="team-image"><img src="dummy/person-2.jpg"></figure>
											<h3 class="team-name">Brinda</h3>
											
										</div>
										
									</div>
									<div class="col-md-6">
										<div class="team small">
											<figure class="team-image"><img src="dummy/person-3.jpg"></figure>
											<h3 class="team-name">Jasmine</h3>
											
										</div>
										<div class="team small">
											<figure class="team-image"><img src="dummy/person-4.jpg"></figure>
											<h3 class="team-name">Prisha</h3>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>

                    <%@include file="footer.jsp" %>
		</div>
		

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>