<%@ page import ="java.sql.*"%>
<%   
    String scat = request.getParameter("scat");
    String sname = request.getParameter("sname");
    String sprice = request.getParameter("sprice");
    try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps;
                ps = con.prepareStatement("insert into hair_studio.services(service_category, service_name,  price) values (?,?,?)");
              
                ps.setString(1, scat);
                ps.setString(2, sname);
                ps.setString(3, sprice);
                
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Service Saved successfully..!");
                            response.sendRedirect("admin_add_service.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                                       response.sendRedirect("admin_add_service.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("admin_add_service.jsp");
}
%>