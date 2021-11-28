<%-- 
    Document   : adminhome
    Created on : 4 Mar, 2018, 12:13:34 PM
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
       <h2>Welcome Admin</h2>
        <table  cellpadding="10" id="admintable" >
            <tr>
                <td><a href="customer.jsp"><img src="img/customer.jpg" alt="customer" style="height:200px;width:200px"/><br>Customer details</a></td>
            <td><a href="employee.jsp"><img src="img/employee.png" alt="employee" style="height:200px;width:200px"/><br>Employee details</a></td>
            <td><a href="orderreceived.jsp"><img src="img/cartdetail.jpg" alt="cart" style="height:200px;width:200px"/><br>Cart details</a></td>
            </tr>
            
        </table>
       
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
