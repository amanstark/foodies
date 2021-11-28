<%-- 
    Document   : login
    Created on : 28 Nov, 2017, 9:26:52 PM
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
                        <script src="lib/wow.min.js"></script>
            <script>
              new WOW().init();
              </script>
           
               
    </head>
    <body>
        <h2 class=" animated fadeIn">foodies</h2>
         <div class="animated slideInRight" id="navigation1">
    <ul>
    <li><a href="index.jsp">HOME</a></li>
     
    <li><a href="register.jsp">REGISTER</a></li>
    <li><a href="admin.jsp">ADMIN</a></li>
    <li><a href="gallery.jsp">GALLERY</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    
    </ul>
         </div>
        
        <ul class="rslides animated fadeInRight">
            <li><a href="s.jsp"><img src="images/1.jpg" alt=""></a></li>
  <li><img src="images/2.jpg" alt=""></li>
  <li><img src="images/3.jpg" alt=""></li>
  <li><img src="images/4.jpg" alt=""></li>
</ul>
           <div id="rcorners1" class="animated flash">
               <%if(request.getAttribute("reg")!=null){
		 out.print("<font style='color:blue;font-size: 30px'>"+request.getAttribute("reg")+"</font>");
		} %>
            <h3>LOGIN</h3>
            
			<%if(request.getAttribute("error")!=null){
		 out.print("<font style='color:red'>"+request.getAttribute("error")+"</font>");
		} %>
            <form method="post" action="loginprocess.jsp">
                <table cellspacing="5" cellpadding="5" id="td1">
                    <tr><td>USERNAME:</td><td> <input id="iptext" type="text" name="username" class="" required=""/></td></tr>
                    <tr><td>PASSWORD:</td><td> <input  id="iptext" type="password" name="pass" class="" required=""/></td></tr>
                   
                    <tr><td></td><td><input id="btn" type="submit" value="Login"/></td></tr>
                 
                </table> 
            </form>
            <div id="txt1"><a href="forget.jsp">Forget Password</a></div>
        </div>
        
                <div class="wow fadeInUp" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" heigth="50" width="60"/></li>
        <li><img src="img/insta.png" alt="insta"  heigth="50" width="60"/></li>
         <li><img src="img/tweet.png" alt="tweet" heigth="50" width="60"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" heigth="50" width="60"/></li>
    
    </ul>
</div>            
		
    </body>
        
        <script src="lib/jquery-1.3.2.min.js"></script>
        <script src="lib/responsiveslides.min.js"></script>
        <script>
  $(function() {
    $(".rslides").responsiveSlides({
  auto: true,             // Boolean: Animate automatically, true or false
  speed: 500,            // Integer: Speed of the transition, in milliseconds
  timeout: 4000,          // Integer: Time between slide transitions, in milliseconds
  pager: true,           // Boolean: Show pager, true or false
  nav: false,             // Boolean: Show navigation, true or false
  random: false,          // Boolean: Randomize the order of the slides, true or false
  pause: false,           // Boolean: Pause on hover, true or false
  pauseControls: true,    // Boolean: Pause when hovering controls, true or false
  prevText: "Previous",   // String: Text for the "previous" button
  nextText: "Next",       // String: Text for the "next" button
  maxwidth: "",           // Integer: Max-width of the slideshow, in pixels
  navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
  manualControls: "",     // Selector: Declare custom pager navigation
  namespace: "rslides",   // String: Change the default namespace used
  before: function(){},   // Function: Before callback
  after: function(){}     // Function: After callback
});
  });
</script>
        

             
    
</html>
