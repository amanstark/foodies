package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body>\n");
      out.write("         <h2 class=\" animated fadeIn\">foodies</h2>\n");
      out.write("        <div class=\"animated slideInRight\" id=\"navigation1\">\n");
      out.write("    <ul>\n");
      out.write("    <li><a href=\"index.jsp\">HOME</a></li>\n");
      out.write("    <li><a href=\"admin.jsp\">ADMIN</a></li>\n");
      out.write("    <li><a href=\"gallery.jsp\">GALLERY</a></li>\n");
      out.write("    <li><a href=\"about.jsp\">ABOUT US</a></li>\n");
      out.write("    <li><a href=\"index.jsp\">LOG OUT</a></li>\n");
      out.write("    </ul>\n");
      out.write("         </div>\n");
      out.write("         \n");
      out.write("        <div id=\"rcorners6\">\n");
      out.write("            <h4 style=\"color: yellow\">Edit Profile</h4>\n");
      out.write("            <form method=\"post\" action=\"updateprofile\">\n");
      out.write("            <table id=\"td1\">\n");
      out.write("                  ");

    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
Statement stmt=con.createStatement();
String f1=session.getAttribute("user1").toString();
                ResultSet rs=stmt.executeQuery("select * from customer where user='"+f1+"'");
                while(rs.next())
                {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td><input type=\"text\" value=\"");
      out.print(rs.getString("name"));
      out.write("\" id=\"iptext\"></td>\n");
      out.write("                     </tr>\n");
      out.write("                     <tr>\n");
      out.write("                        <td>Email</td>\n");
      out.write("                        <td><input type=\"text\" value=\"");
      out.print(rs.getString("email"));
      out.write("\" id=\"iptext1\"></td>\n");
      out.write("                     </tr>\n");
      out.write("                     <tr>\n");
      out.write("                        <td>Mobile No.</td>\n");
      out.write("                        <td><input type=\"text\" value=\"");
      out.print(rs.getString("phone"));
      out.write("\" id=\"iptext\"></td>\n");
      out.write("                     </tr>\n");
      out.write("                     \n");
      out.write("                        ");

                    
                }
    }
    catch(Exception e){}
    
      out.write("\n");
      out.write("    \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
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
