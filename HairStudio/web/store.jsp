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
					</a> <!-- #branding -->

					
					<!-- Default snippet for navigation -->
					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item"><a href="about.jsp">About</a></li>
							<li class="menu-item"><a href="service.jsp">Services</a></li>
							<li class="menu-item current-menu-item"><a href="store.jsp">Store</a></li>
							<li class="menu-item"><a href="contact.jsp">Contact</a></li>
                                                        <li class="menu-item"><a href="login.jsp">Login</a></li>
						</ul> <!-- .menu -->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>

			<main class="main-content">
<!--				<div class="page">
					<div class="container">
                                            <div class="filterable-items">
							<div class="gallery-item filterable-item manicure">
								<a href="dummy/large-gallery/gallery-1.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-1.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Lorem ipsum dolor sit amet</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item face">
								<a href="dummy/large-gallery/gallery-2.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-2.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Consectetur adipisicing elit</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							
							<div class="gallery-item filterable-item pedicure">
								<a href="dummy/large-gallery/gallery-4.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-4.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Asperiores quas voluptatem</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item face">
								<a href="dummy/large-gallery/gallery-5.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-5.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Ex quos ab perspiciatis</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item face">
								<a href="dummy/large-gallery/gallery-6.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-6.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Natus dolores ad et ipsam</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item manicure">
								<a href="dummy/large-gallery/gallery-7.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-7.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Hic nisi. Animi placeat</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item face">
								<a href="dummy/large-gallery/gallery-8.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-8.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Obcaecati quam</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item face">
								<a href="dummy/large-gallery/gallery-9.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-9.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">quam exercitationem</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item manicure">
								<a href="dummy/large-gallery/gallery-10.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-10.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Hic nisi. Animi placeat</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item makeup">
								<a href="dummy/large-gallery/gallery-11.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-11.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">Obcaecati quam</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
							<div class="gallery-item filterable-item makeup">
								<a href="dummy/large-gallery/gallery-12.jpg">
									<figure class="featured-image">
										<img src="dummy/gallery-12.jpg" alt="">
										<figcaption>
											<h2 class="gallery-title">quam exercitationem</h2>
											<p>Maecenas dictum suscipit</p>
										</figcaption>
									</figure>
								</a>
							</div>
						</div>
					</div>
				</div>-->
			</main>

			<%@include file="footer.jsp" %>
                        
		</div>
		

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>