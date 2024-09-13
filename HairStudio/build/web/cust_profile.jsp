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
<%@ page import ="java.sql.*"%>
<%    String email =session.getAttribute("userid").toString();
            String fname = "";
            String lname = "";
            String address= "";
            String city="";
            String gender="";
            String dist="";
            String zip="";
            String mob="";
          
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio", "root", "root");
                Statement st = con.createStatement();
                ResultSet rs;
                PreparedStatement ps = con.prepareStatement("select * from hair_studio.customer_reg where email=?");
                ps.setString(1, email);
                rs = ps.executeQuery();
                if (rs.next()) {
                    fname= rs.getString("f_name");
                    lname = rs.getString("l_name");
                    address = rs.getString("address");
                    gender= rs.getString("gender");
                    city = rs.getString("city");
                    dist = rs.getString("dist");
                     zip = rs.getString("pincode");
                    mob = rs.getString("mobile");
                }
                st.close();
                con.close();

            } catch (SQLException sqlex) {

            }
            %>
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
                            <li class="menu-item"><a href="cust_home.jsp">Home</a></li>
                            <li class="menu-item"><a href="cust_get_appointment.jsp">Get Appointment</a></li>
                            <li class="menu-item"><a href="cust_notifications.jsp">Notifications</a></li>
                            <li class="menu-item current-menu-item"><a href="cust_profile.jsp">My Profile</a></li>
                            <li class="menu-item"><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>  <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>
            </header>
            <br><br><br><br>
            <main class="main-content">
                <div class="page">
                    <div class="container">
                        <h2 class="section-title" style="text-align:center;">My Profile</h2>
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                                                     
                            <form action="" class="contact-form" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="fname" disabled="" id="fname" value="<%=fname%>" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'">   
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" name="lname" disabled="" id="lname" value="<%=lname%>" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'">   
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea name="addr" id="addr"disabled=""  placeholder="Address" value="" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'"><%=address%></textarea>
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" disabled="" value="<%=gender%>">
                                    </div>
                                    <div class="col-md-6">
                                      <input type="text" name="city" disabled="" id="city" value="<%=city%>" placeholder="City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                      <input type="text" name="dist" id="dist" disabled="" value="<%=dist%>" placeholder="District" onfocus="this.placeholder = ''" onblur="this.placeholder = 'District'">   
                                  </div>
                                    <div class="col-md-6">
                                      <input type="text" name="pincode" disabled="" id="pincode" value="<%=zip%>" placeholder="Postal Zip Code" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal Zip Code'">   
                                  </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="email" name="email" disabled="" id="email" placeholder="Email" value="<%=email%>" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">    
                                    </div>
                                </div> 
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="mobile" name="mobile" disabled="" id="mobile" value="<%=mob%>" placeholder="Mobile No." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mobile No.'">    
                              
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