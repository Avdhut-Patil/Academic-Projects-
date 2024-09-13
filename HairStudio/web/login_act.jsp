<%@ page import ="java.sql.*"%>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st1 = con.createStatement();
    Statement st2 = con.createStatement();
    ResultSet rs1,rs2;

    rs1 = st1.executeQuery("select * from hair_studio.admin_login where uname='" + userid + "' and pwd='" + pwd + "'");
     rs2 = st2.executeQuery("select * from hair_studio.customer_reg where email='" + userid + "' and pass='" + pwd + "'");
    if (rs1.next()) 
    {
        session.setAttribute("userid", userid);
       
        response.sendRedirect("admin_home.jsp");   
         rs1.close();
        
    } 
    else if(rs2.next()){
        session.setAttribute("userid", userid);
        response.sendRedirect("cust_home.jsp");
       rs2.close();
        
    }
    else {
       session.setAttribute("msg","Wrong Username Or Password!!!");
       response.sendRedirect("login.jsp");
    }
   st1.close();
   st2.close();
   con.close();
    
}
catch(Exception ex)
{
 out.println("Error :" +ex.getMessage().toString());
}
%>