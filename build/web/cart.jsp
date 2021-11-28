<%-- 
    Document   : cart
    Created on : 28 Dec, 2017, 4:43:36 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
            <link href="animate.css" rel="stylesheet"/>
           <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
           <script src="lib/wow.min.js"></script>
            <script>
              new WOW().init();
              </script>
    </head>
    <body>
        <h2 class="animated lightSpeedIn">Items In Cart</h2>
         <table width ="100%" border="1" cellpadding="10" id="carttable" class="wow fadeIn">
    
         <%@page import="java.sql.*"%>
         <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                String u1=session.getAttribute("user1").toString();
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select cname,cprice,cqty from cart where cuser='"+u1+"'");
                int i=1,c=0;
            %>  
            <h4 class="wow fadeInUp" style="color: gold">Hi <%=u1%></h4>
           
        <tr>
            <td>Sr.no</td>
            <td>Item Name</td>
            <td>QTY</td>
            <td>Price</td>
        </tr>
            </table>
         <%
            
                while(rs.next())
                {
                    String item=rs.getString("cname");
                    int pr=rs.getInt("cprice");
                    int qt=rs.getInt("cqty");
                    
                    c+=pr*qt;
                    session.setAttribute("i1",i);
                    %>
                      <table width ="100%" border="1" cellpadding="10" id="carttable" class="wow rollIn">
                   
                    <tr>
                 <td><%=i%></td>
                 <td><%=item%></td>
                 <td><%=qt%></td>
                 <td><%=qt*pr%></td>
             </tr>
                     </table>
            
                
        <%
                 i++;  
                 
                }
%>
<h3 class="wow slideInLeft">Total=<%=c%></h3>
 <%
            }
            catch(Exception e){}
            %>
            <form method="post" action="msg.jsp" style="text-align: center">
                <input id="btncart" type="submit" value="Order Now" style="align-content: center"/>
            </form>
            
            
             <div class="wow fadeInUp" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" style="height:50px; width:60px"/></li>
        <li><img src="img/insta.png" alt="insta" style="height:50px; width:60px"/></li>
         <li><img src="img/tweet.png" alt="tweet" style="height:50px; width:60px"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" style="height:50px; width:60px"/></li>
    
    </ul>
</div>
    </body>
</html>
