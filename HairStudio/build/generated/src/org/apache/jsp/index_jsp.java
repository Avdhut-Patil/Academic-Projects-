package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"UTF-8\">\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0,maximum-scale=1\">\n");
      out.write("\t\t <link rel=\"icon\" href=\"images/logo.png\" type=\"image/png\">\n");
      out.write("\t\t<title>Hair Studio</title>\n");
      out.write("\t\t<!-- Loading third party fonts -->\n");
      out.write("\t\t<link href=\"fonts/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<link href=\"fonts/novecento-font/novecento-font.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<!-- Loading main css file -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("\t<body class=\"homepage header-collapse\">\n");
      out.write("\n");
      out.write("\t\t<div id=\"site-content\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<header class=\"site-header\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<a id=\"branding\" href=\"index.jsp\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/logo.png\" alt=\"Hair Studio\" class=\"logo\">\n");
      out.write("\t\t\t\t\t\t<div class=\"logo-copy\">\n");
      out.write("\t\t\t\t\t\t\t<h1 class=\"site-title\">Hair Studio</h1>\n");
      out.write("\t\t\t\t\t\t\t<small class=\"site-description\">Hair & Beauty LTD.</small>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</a> <!-- #branding -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<!-- Default snippet for navigation -->\n");
      out.write("\t\t\t\t\t<div class=\"main-navigation\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"menu-toggle\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu\">\n");
      out.write("\t\t\t\t\t\t\t<li class  =\"menu-item current-menu-item\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"about.jsp\">About</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"service.jsp\">Services</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                                                       <li class=\"menu-item\"><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                                                       \n");
      out.write("                                                        \n");
      out.write("\t\t\t\t\t\t</ul>  <!-- .menu -->\n");
      out.write("\t\t\t\t\t</div> <!-- .main-navigation -->\n");
      out.write("                                        \n");
      out.write("                               \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"mobile-navigation\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</header>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"hero hero-slider\">\n");
      out.write("\t\t\t\t<ul class=\"slides\">\n");
      out.write("\t\t\t\t\t<li data-bg-image=\"dummy/slider-1.jpg\">\n");
      out.write("\t\t\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"slider-subtitle\">Our customers become our brand Ambassadors...</h3>\n");
      out.write("\t\t\t\t\t\t\t<h2 class=\"slider-title\">Professional</h2>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li data-bg-image=\"dummy/slider-2.jpg\">\n");
      out.write("\t\t\t\t\t\t<div class=\"container\">\n");
      out.write("                                                    \n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"slider-subtitle\">Our customers become our brand Ambassadors...</h3>\n");
      out.write("\t\t\t\t\t\t\t<h2 class=\"slider-title\">Professional</h2>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li data-bg-image=\"dummy/slider-3.jpg\">\n");
      out.write("\t\t\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"slider-subtitle\">Our customers become our brand Ambassadors...</h3>\n");
      out.write("\t\t\t\t\t\t\t<h2 class=\"slider-title\">Professional</h2>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<main class=\"main-content\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"fullwidth-block features-section\">\n");
      out.write("\t\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"section-title\">our Services</h2>\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/icon-1.png\" class=\"feature-image\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"feature-title\">Facial</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/icon-2.png\" class=\"feature-image\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"feature-title\">Hair</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/icon-3.png\" class=\"feature-image\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"feature-title\">Beard</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/icon-4.png\" class=\"feature-image\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"feature-title\">Nail Art</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div> <!-- .row -->\n");
      out.write("\t\t\t\t\t</div> <!-- .container -->\n");
      out.write("\t\t\t\t</div> <!-- .fullwidth-block.features-section -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"fullwidth-block team-section\">\n");
      out.write("\t\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"section-title\">Our team</h2>\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"team\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<figure class=\"team-image\"><img src=\"dummy/person-1@2x.jpg\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"team-name\">Advika</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"team\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<figure class=\"team-image\"><img src=\"dummy/person-2.jpg\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"team-name\">Brinda</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"team\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<figure class=\"team-image\"><img src=\"dummy/person-3.jpg\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"team-name\">Jasmine</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"team\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<figure class=\"team-image\"><img src=\"dummy/person-4.jpg\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"team-name\">Prisha</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div> <!-- .row -->\n");
      out.write("\t\t\t\t\t</div> <!-- .container -->\n");
      out.write("\t\t\t\t</div> <!-- .fullwidth-block.team-section -->\n");
      out.write("\n");
      out.write("\t\t\t</main>\n");
      out.write("\n");
      out.write("\t\t\t");
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
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\t\t<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/plugins.js\"></script>\n");
      out.write("\t\t<script src=\"js/app.js\"></script>\n");
      out.write("\t\t\n");
      out.write("\t</body>\n");
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
