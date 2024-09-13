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
                            <li class="menu-item current-menu-item"><a href="cust_home.jsp">Home</a></li>
                            <li class="menu-item"><a href="cust_get_appointment.jsp">Get Appointment</a></li>
                            <li class="menu-item"><a href="cust_notifications.jsp">Notifications</a></li>
                            <li class="menu-item"><a href="cust_profile.jsp">My Profile</a></li>
                            <li class="menu-item"><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>  <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>
            </header>
           
            <main class="main-content">
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

            </main>

            <%@include file="footer.jsp" %>
        </div>




        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

    </body>

</html>