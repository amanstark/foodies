<%-- 
    Document   : msg
    Created on : 16 Mar, 2018, 12:01:20 AM
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
        <br>
        <h3>Thank you for Ordering !!</h3><br>
       
        <form action="bill.jsp" method="post" style="text-align: center">
                <input type="submit" id="btncart" value="Generate Bill"></form>
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
