<%-- 
    Document   : forget
    Created on : 3 Dec, 2017, 5:16:09 PM
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
           <style type="text/css">
                       </style>
    </head>
    <body>
         <h2 class=" animated fadeIn">foodies</h2>
         <div class="animated slideInRight" id="navigation">
    <ul>
    <li><a href="index.jsp">HOME</a></li>
     <li><a href="login.jsp">LOGIN</a></li>
    <li><a href="register.jsp">REGISTER</a></li>
    <li><a href="admin.jsp">ADMIN</a></li>
    <li><a href="gallery.jsp">GALLERY</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    
    </ul>
         </div>
        
        <ul class="rslides animated fadeInRight">
  <li><img src="images/1.jpg" alt=""></li>
  <li><img src="images/2.jpg" alt=""></li>
  <li><img src="images/3.jpg" alt=""></li>
  <li><img src="images/4.jpg" alt=""></li>
</ul>
       <div id="rcorners3" class="animated flash">
            <h3>FORGET PASSWORD</h3>
            <form method="post" action="loginprocess">
                <table cellspacing="5" cellpadding="5" id="td1">
                    <tr><td>EMAIL:</td><td> <input id="iptext" type="text" name="username" class="" required=""/></td></tr>
                    <tr><td> NEW PASSWORD:</td><td> <input id="iptext" type="password" name="pass" class="" required=""/></td></tr>
                    <tr><td> CONFIRM PASSWORD:</td><td> <input id="iptext" type="password" name="pass" class="" required=""/></td></tr>
                   
                    <tr><td></td><td><input id="btn" type="submit" value="Submit"/></td></tr>
                 
                </table> 
            </form>
       </div>
        
                <div class="animated fadeInUp" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" heigth="50" width="60"/></li>
        <li><img src="img/insta.png" alt="insta"  heigth="50" width="60"/></li>
         <li><img src="img/tweet.png" alt="tweet" heigth="50" width="60"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" heigth="50" width="60"/></li>
    
    </ul>
</div>            

    </body>
</html>
