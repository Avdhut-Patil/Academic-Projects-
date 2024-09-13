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
                            <li class="menu-item current-menu-item"><a href="contact.jsp">Contact</a></li>
                            <li class="menu-item"><a href="login.jsp">Login</a></li>
                        </ul> <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>
            </header>

            <main class="main-content">
                <div class="page">
                    <div class="container">

                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <h3><%
                                    if (session.getAttribute("msg") != null) {
                                        out.print(session.getAttribute("msg").toString());
                                        session.setAttribute("msg", null);
                                                                  }%></h3>
                                <form action="contact_act.jsp" class="contact-form email-form" method="post">
                                    <input type="text" id="name" name="name" placeholder="Name..." required="">
                                    <input type="text" id="email" name="email" placeholder="Email..."  required="">
                                    <textarea id="message" name="mess" placeholder="Message..." required=""></textarea>
                                    <div class="text-right">
                                        <button class="button large" type="submit" required="">Send Message</button>
                                    </div>
                                </form>
                            </div>
                                <div class="col-md-3"></div>
<!--                            <div class="col-md-6 col-md-offset-1">
                                <div class="map-container">
                                    <div class="map"></div>
                                    <div class="address-info">
                                        <address>
                                            <img src="images/icon-map-small.png" class="icon">
                                            <p><strong>Hair Studio</strong> Akanksha Apartment, 80ft Road, Sangli.</p>
                                        </address>
                                        <div class="contact-info">
                                            <a href="mailto:emailto_hairstudio@gmail.com" class="mail"><img src="images/icon-envelope-small.png" class="icon">emailto_hairstudio@gmail.com</a>
                                            <a href="tel:(500)942042259" class="phone"><img src="images/icon-phone-small.png" class="icon">(+91) 9834169937</a>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div>
            </main>
            <%@include file="footer.jsp" %>
        </div>




        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

    </body>

</html>