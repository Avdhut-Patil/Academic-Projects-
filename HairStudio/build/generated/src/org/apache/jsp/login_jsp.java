package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/footer.jsp");
  }

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

      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0,maximum-scale=1\">\n");
      out.write("        <link rel=\"icon\" href=\"images/logo.png\" type=\"image/png\">\n");
      out.write("        <title>Hair Studio</title>\n");
      out.write("        <!-- Loading third party fonts -->\n");
      out.write("        <link href=\"fonts/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"fonts/novecento-font/novecento-font.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <!-- Loading main css file -->\n");
      out.write("        <link href=\"css/stylerules.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/ie-support/html5.js\"></script>\n");
      out.write("        <script src=\"js/ie-support/respond.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"site-content\">\n");
      out.write("\n");
      out.write("            <header class=\"site-header\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <a id=\"branding\" href=\"index.jsp\">\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"Hair Studio\" class=\"logo\">\n");
      out.write("                        <div class=\"logo-copy\">\n");
      out.write("                            <h1 class=\"site-title\">Hair Studio</h1>\n");
      out.write("                            <small class=\"site-description\">Hair & Beauty LTD.</small>\n");
      out.write("                        </div>\n");
      out.write("                    </a>  <!-- #branding -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Default snippet for navigation -->\n");
      out.write("                    <div class=\"main-navigation\">\n");
      out.write("                        <button type=\"button\" class=\"menu-toggle\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("                        <ul class=\"menu\">\n");
      out.write("                            <li class=\"menu-item\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li class=\"menu-item\"><a href=\"about.jsp\">About</a></li>\n");
      out.write("                            <li class=\"menu-item\"><a href=\"service.jsp\">Services</a></li>\n");
      out.write("                            <li class=\"menu-item\"><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                            <li class=\"menu-item current-menu-item\"><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                        </ul> <!-- .menu -->\n");
      out.write("                    </div> <!-- .main-navigation -->\n");
      out.write("\n");
      out.write("                    <div class=\"mobile-navigation\"></div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            <main class=\"main-content\">\n");
      out.write("                <div class=\"page\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"col-md-3\"></div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <h2 class=\"section-title\">Login</h2>\n");
      out.write("                             <h3>");

                                if (session.getAttribute("msg") != null) {
                                    out.print(session.getAttribute("msg").toString());
                                    session.setAttribute("msg", null);
                                }
      out.write("</h3>\n");
      out.write("                            <form action=\"login_act.jsp\" class=\"contact-form\" method=\"post\">\n");
      out.write("\n");
      out.write("                                <input type=\"text\" id=\"uname\" name=\"uname\" placeholder=\"Email\">\n");
      out.write("                                <input type=\"password\" id=\"pass\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("                                <div class=\"text-right\">\n");
      out.write("                                    <button class=\"button large\" type=\"submit\">Login</button>\n");
      out.write("                                </div>\n");
      out.write("                                <br>\n");
      out.write("                                <div class=\"text-right\"><label>You not have an account? </label><a href=\"cust_reg.jsp\">Sign Up Here</a></div>\n");
      out.write("                            </form>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3\"></div>\n");
      out.write("                </div>\n");
      out.write("            </main>\n");
      out.write("            ");
      out.write("<footer class=\"site-footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"widget contact-widget\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3 class=\"widget-title\">Contact</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"contact-info\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<address>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/icon-map-small.png\" class=\"icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p><strong>Hair Studio</strong> Akanksha Apartment,80ft Road, Sangli.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t</address>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"mailto:contact@companyname.com\" class=\"mail\"><img src=\"images/icon-envelope-small.png\" class=\"icon\">emailto_hairstudio@gmail.com</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"tel:(500)942042259\" class=\"phone\"><img src=\"images/icon-phone-small.png\" class=\"icon\">(+91) 9834169937</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6 \">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"widget\">\n");
      out.write("                                                            <h3 style=\"text-align: right;\" class=\"widget-title\">Social Media</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<div style=\"text-align: right;\" class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                    <marquee>\n");
      out.write("                                        <div class=\"colophon\">\n");
      out.write("\t\t\t\t\t\t<p>Hair Studio website Designed & develed by Vinashree  & mansi.</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                    </marquee>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</footer>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <script src=\"js/plugins.js\"></script>\n");
      out.write("        <script src=\"js/app.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
