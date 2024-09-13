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
        <script>$(function () {
                var dtToday = new Date();

                var month = dtToday.getMonth() + 1;
                var day = dtToday.getDate();
                var year = dtToday.getFullYear();
                if (month < 10)
                    month = '0' + month.toString();
                if (day < 10)
                    day = '0' + day.toString();

                var minDate = year + '-' + month + '-' + day;

                $('#txtDate').attr('min', minDate);
            });
        </script>
    </head>


    <body>
        <%@ page import ="java.sql.*"%>
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
                            <li class="menu-item current-menu-item"><a href="cust_get_appointment.jsp">Get Appointment</a></li>
                            <li class="menu-item"><a href="cust_notifications.jsp">Notifications</a></li>
                            <li class="menu-item"><a href="cust_profile.jsp">My Profile</a></li>
                            <li class="menu-item"><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>  <!-- .menu -->
                    </div> <!-- .main-navigation -->

                    <div class="mobile-navigation"></div>
                </div>

            </header>

            <main class="main-content">
                <div class="page">
                    <div class="container">
                        <h2 class="section-title" style="text-align:center;">Get Appointment</h2>
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <h3><%
                                if (session.getAttribute("msg") != null) {
                                    out.print(session.getAttribute("msg").toString());
                                    session.setAttribute("msg", null);
                                }%></h3>

                            <form action="cust_get_appointment_act.jsp" class="contact-form" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <select name="sname" required="true" style="background-color:#151215;">
                                            <option disabled="true" selected="">Select Service</option>
                                            <%  try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio", "root", "root");
                                                    Statement st = con.createStatement();
                                                    ResultSet rs;
                                                    PreparedStatement ps = con.prepareStatement("select * from hair_studio.services");
                                                    rs = ps.executeQuery();
                                                    while(rs.next()) {%>
                                                    <option value="<%=rs.getString("service_name")%>"><%=rs.getString("service_name")%></option>
                                                    <%}
                                                    st.close();
                                                    con.close();

                                                } catch (SQLException sqlex) {

                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <br> 
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" name="adate" id="txtDate" min="2021-05-06" placeholder="Select Appointment Date" onfocus="this.type = 'date'" onblur="this.type = 'text'">   
                                    </div>
                                </div>
                                <br>
                                <div class="text-right">
                                    <button class="button large" type="submit">Send Request</button>
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