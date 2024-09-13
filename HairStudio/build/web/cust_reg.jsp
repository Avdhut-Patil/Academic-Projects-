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
        <link href="css/stylerules.css" rel="stylesheet" type="text/css"/>
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
                            <li class="menu-item"><a href="about.jsp">About</a></li>
                            <li class="menu-item"><a href="service.jsp">Services</a></li>
                            <li class="menu-item"><a href="store.jsp">Store</a></li>
                            <li class="menu-item"><a href="contact.jsp">Contact</a></li>
                            <li class="menu-item current-menu-item"><a href="login.jsp">Login</a></li>
                        </ul> <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>
            </header>

            <main class="main-content">
                <div class="page">
                    <div class="container">
                        <h2 class="section-title" style="text-align:center;">Customer Registration</h2>
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <h3><%
                                if (session.getAttribute("msg") != null) {
                                    out.print(session.getAttribute("msg").toString());
                                    session.setAttribute("msg", null);
                                }%></h3>
                            
                            <form action="cust_reg_act.jsp" class="contact-form" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="fname" id="fname" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" >   
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" name="lname" id="lname" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'">   
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea name="addr" id="addr" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'"></textarea>
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <select name="gender" required="true" style="background-color:#151215;">
                                            <option disabled="true" selected="true">Gender</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select> 
                                    </div>
                                    <div class="col-md-6">
                                      <input type="text" name="city" id="city" placeholder="City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                      <input type="text" name="dist" id="dist" placeholder="District" onfocus="this.placeholder = ''" onblur="this.placeholder = 'District'">   
                                  </div>
                                    <div class="col-md-6">
                                      <input type="text" name="pincode" id="pincode" placeholder="Postal Zip Code" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal Zip Code'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="email" name="email" id="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">    
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="mobile" name="mobile" id="mobile" placeholder="Mobile No." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mobile No.'">    
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="password" name="pass" id="pass" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required="pass">   
                                  </div>
                                    <div class="col-md-6">
                                      <input type="password" name="cpass" id="cpass" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                <div class="text-right">
                                    <button class="button large" type="submit">Register</button>
                                </div>
                                    <div> 
                                    <button class="button large" type="clear">Clear</button>
                                </div>
                                </div>
                            </form>  
                       
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </main>
            <%@include file="footer.jsp" %>
        </div>

        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

    </body>

</html>