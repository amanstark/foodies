<%-- 
    Document   : cartprocess
    Created on : 28 Dec, 2017, 4:12:10 PM
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
                
                out.println("connect");
                String username=session.getAttribute("user1").toString();
                out.println(username);
                String item=request.getAttribute("vname").toString();
                String id1=request.getAttribute("id").toString();
               int pric=Integer.parseInt(request.getAttribute("price").toString());
                int quant=Integer.parseInt(request.getAttribute("qty").toString());
                
                PreparedStatement ps=con.prepareStatement("insert into cart values(?,?,?,?,?,CURTIME(),CURDATE())");
                ps.setString(1,username);
                 ps.setString(2,item);
                  ps.setInt(3,pric);
                   ps.setInt(4,quant);
                   ps.setString(5,id1);
                  
                   ps.execute();
                    %>
                      <jsp:forward page="cart.jsp"></jsp:forward>
<%
                
            }
            catch(Exception e){}
            %>
    </body>
</html>
