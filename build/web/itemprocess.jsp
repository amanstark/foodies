<%-- 
    Document   : vegprocess
    Created on : 28 Dec, 2017, 3:23:53 PM
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
                Statement stmt=con.createStatement();
                
                String l1=request.getParameter("f1");
                int s1=Integer.parseInt(l1);
                String qt=request.getParameter("qty");
                int q1=Integer.parseInt(qt);
                ResultSet rs=stmt.executeQuery("select * from item where vid="+s1+"");
                while(rs.next())
                {
                    String a1=rs.getString("vname");
                    int n1=rs.getInt("vprice");
                     String n2=rs.getString("vid");
                    request.setAttribute("vname",a1);
                     request.setAttribute("price",n1);
                     request.setAttribute("id",n2);
                      request.setAttribute("qty",q1);
                      %>
                      <jsp:forward page="cartprocess.jsp"></jsp:forward>
<%
                      
                }
            }
            catch(Exception e){}
            %>
                
    </body>
</html>
