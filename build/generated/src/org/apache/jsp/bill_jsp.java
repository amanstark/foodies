package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class bill_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("           <link href=\"animate.css\" rel=\"stylesheet\"/>\n");
      out.write("           <script type=\"text/javascript\" src=\"lib/jquery-1.3.2.min.js\"></script>\n");
      out.write("           <script src=\"lib/wow.min.js\"></script>\n");
      out.write("            <script>\n");
      out.write("              new WOW().init();\n");
      out.write("              </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h3>Bill Details!</h3>\n");
      out.write("        <table width =\"50%\" border=\"4\" cellpadding=\"10\" class=\"wow fadeIn\" id=\"custable\">\n");
      out.write("            \n");
      out.write("         ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                 String u1=session.getAttribute("user1").toString();
                ResultSet rs=stmt.executeQuery("select cname,cprice,cqty from cart where cuser='"+u1+"'");
                float c=0;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"4\">Foodies</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Item Name</td>\n");
      out.write("                    <td>Price</td>\n");
      out.write("                    <td>Quantity</td>\n");
      out.write("                    <td>Total</td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    while(rs.next())
                    {
                        int a1=rs.getInt(2);
                        int a2=rs.getInt(3);
                         c+=a1*a2;
                        
      out.write("\n");
      out.write("                         <tr>\n");
      out.write("                 <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(a1);
      out.write("</td>\n");
      out.write("                   <td>");
      out.print(a2);
      out.write("</td>\n");
      out.write("                   <td>");
      out.print(a1*a2);
      out.write("</td>\n");
      out.write("                         </tr>\n");
      out.write("                         \n");
      out.write("       ");

                    } 
                  float p1=(c/100)*10;
       
      out.write("\n");
      out.write("                          <tr>\n");
      out.write("                             <td colspan=\"3\">GST 10%</td>\n");
      out.write("                             <td>");
      out.print(p1);
      out.write("</td>\n");
      out.write("                         </tr>\n");
      out.write("                          <tr>\n");
      out.write("                             <td colspan=\"3\">Grand Total</td>\n");
      out.write("                             <td>");
      out.print(p1+c);
      out.write("</td>\n");
      out.write("                         </tr>\n");
      out.write("                         ");

            }
            catch(Exception e){}
         
      out.write("\n");
      out.write("        </table>\n");
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
