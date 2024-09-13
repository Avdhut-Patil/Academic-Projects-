<%@ page import ="java.sql.*"%>
<%   
    String userid=session.getAttribute("userid").toString();
    String sname = request.getParameter("sname");
    String adate = request.getParameter("adate");
    String status="Pending";
    try
    {        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps;
                ps = con.prepareStatement("insert into hair_studio.appointment(email, service_name,app_date,status) values (?,?,?,?)");
              
                ps.setString(1, userid);
                ps.setString(2, sname);
                ps.setString(3, adate);
                ps.setString(4, status);
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Appointment request sent successfully..!");
                            response.sendRedirect("cust_get_appointment.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                   response.sendRedirect("cust_get_appointment.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("cust_get_appointment.jsp");
}
%>