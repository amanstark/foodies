<%-- 
    Document   : adminprocess
    Created on : 18 Jan, 2018, 11:18:20 PM
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
                ResultSet rs=stmt.executeQuery("select adminuser,pass from admin");
                int flag=0;
                while(rs.next())
                {
                    String user=request.getParameter("username");
                   session.setAttribute("user1",user);
                    String pass=request.getParameter("pass");
                    String s1=rs.getString(1);
                    String s2=rs.getString(2);
                    if(user.equals(s1)&&pass.equals(s2))
                    {
                        flag=1;
                    }
                }
                 if(flag==1)
                {
                   
                   response.sendRedirect("adminhome.jsp");
                }
                else
                {
                   request.setAttribute("error","Wrong Username Or Password");
                   %>
                   <jsp:forward page="login.jsp"></jsp:forward>
                   <%
                }
            }
            catch(Exception e){}
            %>
    </body>
</html>
