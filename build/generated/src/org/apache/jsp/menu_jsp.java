package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"animate.css\" rel=\"stylesheet\"/>\n");
      out.write("           <script type=\"text/javascript\" src=\"lib/jquery-1.3.2.min.js\"></script>\n");
      out.write("           <script src=\"lib/wow.min.js\"></script>\n");
      out.write("            <script>\n");
      out.write("              new WOW().init();\n");
      out.write("              </script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        <body>\n");
      out.write("        <h2 class=\" animated fadeIn\">foodies</h2>\n");
      out.write("         <div class=\"animated slideInRight\" id=\"navigation1\">\n");
      out.write("    <ul>\n");
      out.write("    <li><a href=\"index.jsp\">HOME</a></li>\n");
      out.write("     \n");
      out.write("    <li><a href=\"register.jsp\">REGISTER</a></li>\n");
      out.write("    <li><a href=\"admin.jsp\">ADMIN</a></li>\n");
      out.write("    <li><a href=\"gallery.jsp\">GALLERY</a></li>\n");
      out.write("    <li><a href=\"about.jsp\">ABOUT US</a></li>\n");
      out.write("    \n");
      out.write("    </ul>\n");
      out.write("         </div>\n");
      out.write("        \n");
      out.write("        <ul class=\"rslides animated fadeInRight\">\n");
      out.write("  <li><img src=\"images/1.jpg\" alt=\"\"></li>\n");
      out.write("  <li><img src=\"images/2.jpg\" alt=\"\"></li>\n");
      out.write("  <li><img src=\"images/3.jpg\" alt=\"\"></li>\n");
      out.write("  <li><img src=\"images/4.jpg\" alt=\"\"></li>\n");
      out.write("</ul>\n");
      out.write("        <h2 style=\"text-decoration: underline; color:lawngreen\" class=\"wow rotateInUpRight\">MENU</h2>\n");
      out.write("        <div id=\"rcorners4\" style=\" background-image: url(img/paneer.jpg); width: 50%; height: 100px; background-size: 100%;\" class=\"wow lightSpeedIn\">\n");
      out.write("            \n");
      out.write("            <a href=\"veg.jsp\"> <h3> VEG</h3></a>   \n");
      out.write("        </div> &nbsp;\n");
      out.write("          <div id=\"rcorners4\" style=\" background-image: url(img/chicken.jpg); width: 50%; height: 100px; background-size: 100%;\" class=\"wow rollIn\" >\n");
      out.write("            \n");
      out.write("            <a href=\"nonveg.jsp\"> <h3>NON-VEG</h3></a>   \n");
      out.write("        </div>&nbsp;\n");
      out.write("          <div id=\"rcorners4\" style=\" background-image: url(images/3.jpg); width: 50%; height: 100px; background-size: 100%;\" class=\"wow lightSpeedIn\" >\n");
      out.write("            \n");
      out.write("            <a href=\"pizza.jsp\"> <h3>PIZZA</h3></a>   \n");
      out.write("        </div>&nbsp;\n");
      out.write("          <div id=\"rcorners4\" style=\" background-image: url(img/drinks1.jpg); width: 50%; height: 100px; background-size: 100%;\" class=\"wow rollIn\" >\n");
      out.write("            \n");
      out.write("            <a href=\"drinks.jsp\"> <h3>DRINKS</h3></a>   \n");
      out.write("        </div>\n");
      out.write("         <div class=\"wow fadeInUp\" id=\"navigationfoot\">\n");
      out.write("    <ul>\n");
      out.write("        <li><img src=\"img/fb.jpg\" alt=\"fb\" heigth=\"50\" width=\"60\"/></li>\n");
      out.write("        <li><img src=\"img/insta.png\" alt=\"insta\"  heigth=\"50\" width=\"60\"/></li>\n");
      out.write("         <li><img src=\"img/tweet.png\" alt=\"tweet\" heigth=\"50\" width=\"60\"/></li>\n");
      out.write("     <li><img src=\"img/whatsapp.png\" alt=\"tweet\" heigth=\"50\" width=\"60\"/></li>\n");
      out.write("    \n");
      out.write("    </ul>\n");
      out.write("</div>          \n");
      out.write("\t <div class=\"header-cont\">\n");
      out.write("             <div class=\"header\"></div>\n");
      out.write("           \n");
      out.write("          \n");
      out.write("            <a href=\"edit.jsp\"><img src=\"img/profile.png\" style=\"height:100px ;width:100px\"/></a>\n");
      out.write("            ");
out.print("<font id='carttext' style='color:gold'>"+session.getAttribute("i1")+"</font>");
      out.write("\n");
      out.write("          <a href=\"cart.jsp\"> <img src=\"img/cart3.jpg\" alt=\"cart\" style=\"height: 100px;width: 100px\"/></a>\n");
      out.write("          \n");
      out.write("           \n");
      out.write("       </div>\t\n");
      out.write("    </body>\n");
      out.write("        \n");
      out.write("        <script src=\"lib/jquery-1.3.2.min.js\"></script>\n");
      out.write("        <script src=\"lib/responsiveslides.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("  $(function() {\n");
      out.write("    $(\".rslides\").responsiveSlides({\n");
      out.write("  auto: true,             // Boolean: Animate automatically, true or false\n");
      out.write("  speed: 500,            // Integer: Speed of the transition, in milliseconds\n");
      out.write("  timeout: 4000,          // Integer: Time between slide transitions, in milliseconds\n");
      out.write("  pager: true,           // Boolean: Show pager, true or false\n");
      out.write("  nav: false,             // Boolean: Show navigation, true or false\n");
      out.write("  random: false,          // Boolean: Randomize the order of the slides, true or false\n");
      out.write("  pause: false,           // Boolean: Pause on hover, true or false\n");
      out.write("  pauseControls: true,    // Boolean: Pause when hovering controls, true or false\n");
      out.write("  prevText: \"Previous\",   // String: Text for the \"previous\" button\n");
      out.write("  nextText: \"Next\",       // String: Text for the \"next\" button\n");
      out.write("  maxwidth: \"\",           // Integer: Max-width of the slideshow, in pixels\n");
      out.write("  navContainer: \"\",       // Selector: Where controls should be appended to, default is after the 'ul'\n");
      out.write("  manualControls: \"\",     // Selector: Declare custom pager navigation\n");
      out.write("  namespace: \"rslides\",   // String: Change the default namespace used\n");
      out.write("  before: function(){},   // Function: Before callback\n");
      out.write("  after: function(){}     // Function: After callback\n");
      out.write("});\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("    \n");
      out.write("</html>\n");
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
