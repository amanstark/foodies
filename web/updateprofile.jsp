<%-- 
    Document   : updateprofile
    Created on : 23 Mar, 2018, 11:49:55 PM
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

String s1=request.getParameter("x1");
String s2=request.getParameter("x2");
String s3=request.getParameter("x3");
String s4=session.getAttribute("user1").toString();
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
PreparedStatement ps=con.prepareStatement("update customer set name='"+s1+"',email='"+s2+"',phone='"+s3+"' where user='"+s4+"'");
ps.execute();
response.sendRedirect("edit.jsp");
    }
    catch(Exception e){}
    %>
    </body>
</html>
