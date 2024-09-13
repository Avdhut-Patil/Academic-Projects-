<%@ page import ="java.sql.*"%>
<%   
    String aid= request.getParameter("aid");
    try
    {     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hair_studio","root","root");
    Statement st = con.createStatement();
    ResultSet rs;

        PreparedStatement ps,ps1;
                ps = con.prepareStatement("update hair_studio.appointment set status=? where app_id=?");
              
                ps.setString(1, "Confirmed");
                ps.setString(2,aid);
                
                
                String email="",sname="",adate="";
                rs=st.executeQuery("select * from hair_studio.appointment where app_id="+aid);
                if(rs.next())
                {
                    email=rs.getString("email");
                    sname=rs.getString("service_name");
                    adate=rs.getString("app_date");
                }
                String message="Your appointment has been confirmed successfully on "+adate+" for "+sname;
                 ps1 = con.prepareStatement("insert into hair_studio.notifications(email,message) values (?,?)");
              
                ps1.setString(1, email);
                ps1.setString(2,message); 
                int i = ps.executeUpdate();
                int j=ps1.executeUpdate();

                if (i > 0 && j>0) {
                            response.sendRedirect("admin_pending_appointments.jsp");
                                              
                } else {

                    session.setAttribute("msg", "There was some error.");
                                       response.sendRedirect("admin_pending_appointments.jsp");
                }
                ps.close();
                con.close();
    }
    catch(Exception ex)
{          
 session.setAttribute("msg","Error :" +ex.getMessage().toString());
 response.sendRedirect("admin_pending_appointments.jsp");
}
%>