<%-- 
    Document   : deletecust
    Created on : 15 Mar, 2018, 10:24:07 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                String k1=request.getParameter("a1");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select user from customer");
              PreparedStatement ps=con.prepareStatement("delete from customer where user='"+k1+"'");
                        ps.execute();
                        if(rs.next())
                        {
                        if(k1!=rs.getString(1))
                        {
                            request.setAttribute("user2","enter correct name");
                        }
                      
                        }
                       %>

              <jsp:forward page="customer.jsp"></jsp:forward>
<%
                    
               
                
              
               
          }
            catch(Exception e){}
            %>
    </body>
</html>
