<%@ page import ="java.sql.*"%>
<%   
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("mess");
    try
    {
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps;
                ps = con.prepareStatement("insert into hair_studio.contact( name,  email ,mess) values (?,?,?)");
              
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, message);
                
                int i = ps.executeUpdate();

                if (i > 0) {

                            session.setAttribute("msg", "Message sent successfully..!");
                            response.sendRedirect("contact.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                                       response.sendRedirect("contact.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("contact.jsp");
}
%>