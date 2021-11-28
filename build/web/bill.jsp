<%-- 
    Document   : bill
    Created on : 16 Mar, 2018, 12:12:48 AM
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
        <h3>Bill Details!</h3>
        <table width ="50%" border="4" cellpadding="10" class="wow fadeIn" id="custable">
            <%@page import="java.sql.*"%>
         <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                 String u1=session.getAttribute("user1").toString();
                ResultSet rs=stmt.executeQuery("select cname,cprice,cqty from cart where cuser='"+u1+"'");
                float c=0;
                %>
                <tr>
                    <td colspan="4">Foodies</td>
                </tr>
                <tr>
                    <td>Item Name</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                </tr>
                <%
                    while(rs.next())
                    {
                        int a1=rs.getInt(2);
                        int a2=rs.getInt(3);
                         c+=a1*a2;
                        %>
                         <tr>
                 <td><%=rs.getString(1)%></td>
                  <td><%=a1%></td>
                   <td><%=a2%></td>
                   <td><%=a1*a2%></td>
                         </tr>
                         
       <%
                    } 
                  float p1=(c/100)*10;
       %>
                          <tr>
                             <td colspan="3">GST 10%</td>
                             <td><%=p1%></td>
                         </tr>
                          <tr>
                             <td colspan="3">Grand Total</td>
                             <td><%=p1+c%></td>
                         </tr>
                         <%
            }
            catch(Exception e){}
         %>
        </table>
    </body>
</html>
