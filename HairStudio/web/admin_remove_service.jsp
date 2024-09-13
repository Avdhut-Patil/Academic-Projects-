<%@ page import ="java.sql.*"%>
<%   
    String sid = request.getParameter("sid");
    try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps;
                ps = con.prepareStatement("delete from hair_studio.services where service_id=?");
              
                ps.setString(1, sid);
                   
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Service Deleted successfully..!");
                            response.sendRedirect("admin_services_list.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                                       response.sendRedirect("admin_services_list.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("admin_services_list.jsp");
}
%>