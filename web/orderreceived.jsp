<%-- 
    Document   : orderreceived
    Created on : 16 Mar, 2018, 11:18:51 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="animate.css" rel="stylesheet"/>
           <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
           <script src="lib/wow.min.js"></script>
            <script>
              new WOW().init();
              </script>
    </head>
    <body>
         <h2>Order Received</h2>
          <%@page import="java.sql.*"%>
        
            
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from cart");
                %>
                <table border="2" cellspacing="5" id="custable">
                    <tr>
                        <td>User</td>
                        <td>Item Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Item ID</td>
                        <td>Time</td>
                        <td>Date</td>
                    </tr>
                    <%
                        while(rs.next())
                        {
                          %>
                          <tr>
                              <td><%=rs.getString(1)%></td>
                               <td><%=rs.getString(2)%></td> 
                               <td><%=rs.getInt(3)%></td>
                               <td><%=rs.getInt(4)%></td>
                               <td><%=rs.getString(5)%></td>
                               <td><%=rs.getString(6)%></td>
                               <td><%=rs.getString(7)%></td>
                          </tr>
                      <%
                        }
                       %>
                </table>
                <%
                
            }
            catch(Exception e){}
                %>
                
                
            
    </body>
</html>
