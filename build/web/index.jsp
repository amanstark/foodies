<%-- 
    Document   : index
    Created on : 27 Nov, 2017, 6:22:40 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
           <link href="animate.css" rel="stylesheet"/>
           <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
           <script src="lib/wow.min.js"></script>
            <script>
              new WOW().init();
              </script>
           
        <title>Foodies</title>
    </head>
    <body class="animated fadeInDown"> 
       
        <h1 class="animated bounceInDown">Foodies<h1>
                
                <div class="wow wobble" id="navigation">
    <ul>
    <li><a href="index.jsp">HOME</a></li>
    <li><a href="login.jsp">LOGIN</a></li>
    <li><a href="register.jsp">REGISTER</a></li>
    <li><a href="admin.jsp">ADMIN</a></li>
    <li><a href="gallery.jsp">GALLERY</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    
    </ul>
</div>
               
                <div class="wow slideInLeft" data-wow-duration="2s" data-wow-delay="2s" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" heigth="50" width="60"/></li>
        <li><img src="img/insta.png" alt="insta"  heigth="50" width="60"/></li>
         <li><img src="img/tweet.png" alt="tweet" heigth="50" width="60"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" heigth="50" width="60"/></li>
    
    </ul>
</div>    
                
		
    </body>
</html>
