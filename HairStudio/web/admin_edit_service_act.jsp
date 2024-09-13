<%@ page import ="java.sql.*"%>
<%   
    String sid= request.getParameter("sid");
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
                ps = con.prepareStatement("update hair_studio.services set service_category=?, service_name=?,  price=? where service_id=?");
              
                ps.setString(1, scat);
                ps.setString(2, sname);
                ps.setString(3, sprice);
                ps.setString(4, sid);
                
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Service Updated successfully..!");
                            response.sendRedirect("admin_edit_service.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                                       response.sendRedirect("admin_edit_service.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("admin_edit_service.jsp");
}
%>