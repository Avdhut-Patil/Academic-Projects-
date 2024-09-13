package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class confirm_005fappointment_005fact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
   
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

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
