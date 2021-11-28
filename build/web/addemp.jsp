<%-- 
    Document   : addemp
    Created on : 17 Mar, 2018, 12:32:30 AM
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
                int d1=Integer.parseInt(request.getParameter("t1"));
                String d2=request.getParameter("t2");
                String d3=request.getParameter("t3");
                String d4=request.getParameter("t4");
                PreparedStatement ps=con.prepareStatement("insert into employee values(?,?,?,?)");
                ps.setInt(1,d1);
                ps.setString(2,d2);
                ps.setString(3,d3);
                ps.setString(4,d4);
                
                 ps.execute();
                    %>
                      <jsp:forward page="employee.jsp"></jsp:forward>
<%
                
                
                        
            }
            catch(Exception e){}
            %>
    </body>
</html>
