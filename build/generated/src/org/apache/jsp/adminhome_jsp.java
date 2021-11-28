package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"animate.css\" rel=\"stylesheet\"/>\n");
      out.write("           <script type=\"text/javascript\" src=\"lib/jquery-1.3.2.min.js\"></script>\n");
      out.write("           <script src=\"lib/wow.min.js\"></script>\n");
      out.write("            <script>\n");
      out.write("              new WOW().init();\n");
      out.write("              </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <h2>Welcome Admin</h2>\n");
      out.write("        <table  cellpadding=\"10\" id=\"admintable\" >\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"customer.jsp\"><img src=\"img/customer.jpg\" alt=\"customer\" style=\"height:200px;width:200px\"/><br>Customer details</a></td>\n");
      out.write("            <td><a href=\"employee.jsp\"><img src=\"img/employee.png\" alt=\"employee\" style=\"height:200px;width:200px\"/><br>Employee details</a></td>\n");
      out.write("            <td><a href=\"orderreceived.jsp\"><img src=\"img/cartdetail.jpg\" alt=\"cart\" style=\"height:200px;width:200px\"/><br>Cart details</a></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("       \n");
      out.write("       <div class=\"wow fadeInUp\" id=\"navigationfoot\">\n");
      out.write("    <ul>\n");
      out.write("        <li><img src=\"img/fb.jpg\" alt=\"fb\" style=\"height:50px; width:60px\"/></li>\n");
      out.write("        <li><img src=\"img/insta.png\" alt=\"insta\" style=\"height:50px; width:60px\"/></li>\n");
      out.write("         <li><img src=\"img/tweet.png\" alt=\"tweet\" style=\"height:50px; width:60px\"/></li>\n");
      out.write("     <li><img src=\"img/whatsapp.png\" alt=\"tweet\" style=\"height:50px; width:60px\"/></li>\n");
      out.write("    \n");
      out.write("    </ul>\n");
      out.write("</div>  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
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
