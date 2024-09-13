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

        <script>
            function askandredirect(urltoredirect)
            {
                // window.alert("Are you sure to remove record permanantly?");

                if ((window.confirm("Are you sure to remove record permanantly?"))) {
                    window.location.href = urltoredirect;
                } else {
                    return false;
                }
            }
        </script>

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
                        <h2 class="section-title" style="text-align:center;" id="Report_Heading">List of Enquiry Messages </h2>
                        <div class="row">
                            <div id="stable">
                                <div class="price-list" >
                                    <ul class="prices">
                                        <li class="row mt-10 text-center">
                                            <div class="col-md-4 " style="display: inline;">
                                                Enquirer Name
                                            </div>
                                            <div class="col-md-4 " style="display: inline;">
                                                Enquirer Email ID
                                            </div>
                                            <div class="col-md-4 " style="display: inline;">
                                                Message
                                            </div>
                                            
                                        </li>                                                                                
                                    </ul>
                                </div>
                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio", "root", "root");
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from hair_studio.contact order by contact_id");

                                        while (rs.next()) {
                                            out.println("<div class='price-list'>");
                                            out.println("<ul class='prices'>");
                                            out.println("<li class='row mt-10 text-center'>");
                                            out.println("<div class='col-md-4' style='display: inline;'>" + rs.getString("name") + "</div>");
                                            out.println("<div class='col-md-4' style='display: inline;'>" + rs.getString("email") + "</div>");
                                            out.println("<div class='col-md-4' style='display: inline;'>" + rs.getString("mess") + "</div>");
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

                            <br>
                            <div class="container">
                                <div class="col-lg-12 well">
                                    <div class="row">
                                        <div class="col-lg-5">
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="btn-group" style="margin: auto" >
                                              
                                                <button class="button large" align="center" onclick="createPDF()"><span><i class="fa fa-file-pdf-o"></i></span>&nbsp;Generate Report</button>
                                               
                                            </div>
                                           
                                        </div>
                                        <div class="col-lg-5">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br></br>
                        <script>
                            function createPDF() {
                                var sTable = document.getElementById('stable').innerHTML;
                                var report_heading = document.getElementById("Report_Heading");

                                var style = "<style>";
                                style = style + "table {width: 100%;font: 16px Times-New-Roman;rotate:90}";
                                style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
                                style = style + "padding: 2px 3px;text-align: center;}";
                                style = style + "#removeheading{display:none;}";
                                style = style + "#removelink{display:none;}";
                                style = style + "</style>";

                                // CREATE A WINDOW OBJECT.
                                var win = window.open('', '', 'height=700,width=1000');

                                win.document.write('<html><head>');
                                win.document.write('<title></title>');   // <title> FOR PDF HEADER.
                                win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
                                win.document.write('</head>');
                                win.document.write('<body>  <center><div id="Heading"> <h1 id="Report_Heading">' + report_heading.innerHTML + '</h1><hr style="width:40%;"> </div></center><br><br>');
                                win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
                                win.document.write('</body></html>');
                              

                                win.document.close(); 	// CLOSE THE CURRENT WINDOW.
                                win.print();    // PRINT THE CONTENTS.
                            }
                        </script>
                    </div>
                           
                </div>
            </main>
                        
            <%@include file="footer.jsp" %>





            <script src="js/jquery-1.11.1.min.js"></script>
            <script src="js/plugins.js"></script>
            <script src="js/app.js"></script>

    </body>

</html>