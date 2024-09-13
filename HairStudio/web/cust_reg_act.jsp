<%@ page import ="java.sql.*"%>
<%   
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String gender = request.getParameter("gender");
    String addr = request.getParameter("addr");
    String city = request.getParameter("city");
String dist = request.getParameter("dist");
String pincode = request.getParameter("pincode");
String mobile =request.getParameter("mobile");
String email = request.getParameter("email");
String pass = request.getParameter("pass");
String cpass = request.getParameter("cpass");

    try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps;
                ps = con.prepareStatement("insert into hair_studio.customer_reg( f_name,l_name ,gender ,address ,dist,city  ,pincode ,mobile,  email ,pass,conf_pass) values (?,?,?,?,?,?,?,?,?,?,?)");
              
                ps.setString(1, fname);
                ps.setString(2, lname);
                ps.setString(3, gender);
                ps.setString(4, addr);
                ps.setString(5, dist);
                ps.setString(6, city);
                ps.setString(7, pincode);
                ps.setString(8, mobile);
                ps.setString(9, email );
                ps.setString(10,pass );
                ps.setString(11, cpass );
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Registered Successfully. Please Login..!");
                            response.sendRedirect("login.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error."); 
                                       response.sendRedirect("cust_reg.jsp");
                }
                function mobilenumber() {
          if(document.getElementById('mobnum').value != ""){

       var y = document.getElementById('mobnum').value;
       if(isNaN(y)||y.indexOf(" ")!=-1)
       {
          alert("Invalid Mobile No.");
          document.getElementById('mobnum').focus();
          return false;
       }

       if (y.length>10 || y.length<10)
       {
            alert("Mobile No. should be 10 digit");
            document.getElementById('mobnum').focus();
            return false;
       }
       if (!(y.charAt(0)=="9" || y.charAt(0)=="8" || y.charAt(0)=="7"))
       {
            alert("Mobile No. should start with 9 ,8 or 7 ");
            document.getElementById('mobnum').focus();
            return false
       }

    }
    }

 <input type="submit" value="INSERT"class="btn"onclick="submitForm();">
jquery is
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("cust_reg.jsp");
}
%>