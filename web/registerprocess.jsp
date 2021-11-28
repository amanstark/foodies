<%-- 
    Document   : registerprocess
    Created on : 27 Dec, 2017, 4:05:45 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>foodies</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>

        <%
    try
    {

String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("t5");

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","aman123");
PreparedStatement ps=con.prepareStatement("select user,email from customer where user='"+s4+"'or email='"+s3+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
if(s4.equals(rs.getString(1))|| s3.equals(rs.getString(2)))
{
request.setAttribute("reg","Sorry! Username or Email Already Exists");
%>

<jsp:forward page="register.jsp"></jsp:forward>
<%
}
else
{
if(s3.equals(rs.getString(2)))
{
request.setAttribute("reg","Sorry!Username or Email id Already Exists");
%>

<jsp:forward page="register.jsp"></jsp:forward>
<%
}
}
}
else
{
PreparedStatement ps1=con.prepareStatement("insert into customer values(?,?,?,?,?)");
ps1.setString(1,s4);
ps1.setString(2,s3);
ps1.setString(3,s1);
ps1.setString(4,s2);
ps1.setString(5,s5);
ps1.execute();
request.setAttribute("reg","Sucessfully Register");
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
    }


catch(Exception e){}

   %>

    </body>
</html>
