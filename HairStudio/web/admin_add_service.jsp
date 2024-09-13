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
                            <li class="menu-item"><a href="admin_home.jsp"><i class="fa fa-backward"></i> Back</a></li>
                        </ul> <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>
            </header>

            <main class="main-content">
                <div class="page">
                    <div class="container">
                        <h2 class="section-title" style="text-align:center;">Add Service</h2>
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <h3><%
                                if (session.getAttribute("msg") != null) {
                                    out.print(session.getAttribute("msg").toString());
                                    session.setAttribute("msg", null);
                                }%></h3>
                            
                            <form action="admin_add_service_act.jsp" class="contact-form" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <select name="scat" required="true" style="background-color:#151215;">
                                            <option disabled="true" selected="true">Service Category</option>
                                            <option value="Hair">Hair</option>
                                            <option value="Facial">Facial</option>
                                            <option value="Waxing">Waxing</option>
                                            <option value="Nail Art">Nail Art</option>
                                            <option value="Spa">Spa</option>
                                        </select> 
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                      <input type="text" name="sname" id="sname" placeholder="Service Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Service Name'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" name="sprice" id="sprice" placeholder="Price" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Price'">    
                                    </div>
                                </div> 
                                <br>
                                <div class="text-right">
                                    <button class="button large" type="submit">Save</button>
                                </div>
                            </form>  
                        </div>
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