<%@page import="java.sql.*"%>
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
                            <li class="menu-item current-menu-item"><a href="service.jsp">Services</a></li>
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
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="feature">
                                    <img src="images/icon-5.png" class="feature-image">
                                    <h3 class="feature-title">Spa</h3>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="feature">
                                    <img src="images/icon-6.png" class="feature-image">
                                    <h3 class="feature-title">Massage</h3>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="feature">
                                    <img src="images/icon-7.png" class="feature-image">
                                    <h3 class="feature-title">colour</h3>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="feature">
                                    <img src="images/icon-8.png" class="feature-image">
                                    <h3 class="feature-title">Wax</h3>
                                </div>
                            </div>
                        </div> <!-- .row -->

                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="section-title text-center">Our Services</h2>
                                <div class="price-list" >
                                    <ul class="prices">
                                        <li class="row mt-10 text-center">
                                            <div class="col-md-4" style="display: inline;">
                                                Service Category
                                            </div>
                                            <div class="col-md-4" style="display: inline;">
                                                Service Name
                                            </div>
                                            <div class="col-md-4" style="display: inline;">
                                                Price
                                            </div>
                                        </li>                                                                                
                                    </ul>
                                </div>
                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio", "root", "root");
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from hair_studio.services order by service_id");

                                        while (rs.next()) {
                                            int sid = rs.getInt("service_id");
                                            out.println("<div class='price-list'>");
                                            out.println("<ul class='prices'>");
                                            out.println("<li class='row mt-10 text-center'>");
                                            out.println("<div class='col-md-4' style='display: inline;'>" + rs.getString("service_category") + "</div>");
                                            out.println("<div class='col-md-4' style='display: inline;'>" + rs.getString("service_name") + "</div>");
                                            out.println("<div class='col-md-4 price' style='display: inline;'>&#8377;" + rs.getString("price") + "</div>");
                                            out.println("</li>");
                                            out.println("</ul>");
                                            out.println("</div>");
                                        }
                                        out.println("</tbody>");
                                    } catch (SQLException sqlex) {
                                        out.println(sqlex);
                                    } finally {
                                        out.println();
                                    }


                                %>

                            </div>
                        </div>
                                <h2 style="color: lightcoral"> To Get Appointment    <a href ="login.jsp"> Click here</a> </h2>
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