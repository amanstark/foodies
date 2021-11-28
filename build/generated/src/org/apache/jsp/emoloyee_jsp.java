package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class emoloyee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("             \n");
      out.write("<style>\n");
      out.write(".accordion {\n");
      out.write("    background-color:yellow;\n");
      out.write("    color: #444;\n");
      out.write("    cursor: pointer;\n");
      out.write("    padding: 18px;\n");
      out.write("    width: 50%;\n");
      out.write("    border: 20px steelblue;\n");
      out.write("    text-align: left;\n");
      out.write("    outline:black;\n");
      out.write("    font-size: 15px;\n");
      out.write("    transition: 0.4s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active, .accordion:hover {\n");
      out.write("    background-color: #ccc; \n");
      out.write("}\n");
      out.write("\n");
      out.write(".panel {\n");
      out.write("    padding: 0 18px;\n");
      out.write("    display: none;\n");
      out.write("    background-color: white;\n");
      out.write("    overflow: hidden;\n");
      out.write("    width: 47%;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2>Employee Details</h2>\n");
      out.write("       \n");
      out.write("         \n");
      out.write("        \n");
      out.write("            \n");
      out.write("        ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from employee");
                
      out.write("\n");
      out.write("                <table border=\"2\" cellspacing=\"5\" id=\"custable\" >\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Employee ID</td>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td>Designation</td>\n");
      out.write("                        <td>Salary</td>\n");
      out.write("                       \n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        while(rs.next())
                        {
                          
      out.write("\n");
      out.write("                          <tr>\n");
      out.write("                              <td>");
      out.print(rs.getInt(1));
      out.write("</td>\n");
      out.write("                               <td>");
      out.print(rs.getString(2));
      out.write("</td> \n");
      out.write("                               <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                               <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                           </tr>\n");
      out.write("                      ");

                        }
                       
      out.write("\n");
      out.write("                </table>\n");
      out.write("                ");

                
            }
            catch(Exception e){}
                
      out.write("\n");
      out.write("                <br><br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("            <button class=\"accordion\">Add Employee</button>\n");
      out.write("<div class=\"panel\">\n");
      out.write("    <form action=\"addemp.jsp\" method=\"post\">\n");
      out.write("        ID:<input type=\"number\" name=\"t1\" id=\"iptext\"/><br>\n");
      out.write("        Name:<input type=\"text\" name=\"t2\" id=\"iptext\"/><br>\n");
      out.write("        Designation:<input type=\"text\" name=\"t3\" id=\"iptext\"/><br>\n");
      out.write("        Salary:<input type=\"number\" name=\"t4\" id=\"iptext\"/><br>\n");
      out.write("        <input type=\"submit\" value=\"ADD\" id=\"btn\"/>\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<button class=\"accordion\">Delete Employee</button>\n");
      out.write("<div class=\"panel\">\n");
      out.write("    <form action=\"delemp.jsp\" method=\"post\">\n");
      out.write("        Enter ID:<input type=\"number\" name=\"t5\" id=\"iptext\">\n");
      out.write("        <input type=\"submit\" value=\"DELETE\" id=\"btn\"/>\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("          <script>\n");
      out.write("var acc = document.getElementsByClassName(\"accordion\");\n");
      out.write("var i;\n");
      out.write("\n");
      out.write("for (i = 0; i < acc.length; i++) {\n");
      out.write("    acc[i].addEventListener(\"click\", function() {\n");
      out.write("        this.classList.toggle(\"active\");\n");
      out.write("        var panel = this.nextElementSibling;\n");
      out.write("        if (panel.style.display === \"block\") {\n");
      out.write("            panel.style.display = \"none\";\n");
      out.write("        } else {\n");
      out.write("            panel.style.display = \"block\";\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("}\n");
      out.write("</script>       \n");
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
