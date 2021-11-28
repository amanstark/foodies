<%-- 
    Document   : menu
    Created on : 12 Dec, 2017, 6:54:24 PM
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
        <title>JSP Page</title>
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
  <li><img src="images/1.jpg" alt=""></li>
  <li><img src="images/2.jpg" alt=""></li>
  <li><img src="images/3.jpg" alt=""></li>
  <li><img src="images/4.jpg" alt=""></li>
</ul>
        <h2 style="text-decoration: underline; color:lawngreen" class="wow rotateInUpRight">MENU</h2>
        <div id="rcorners4" style=" background-image: url(img/paneer.jpg); width: 50%; height: 100px; background-size: 100%;" class="wow lightSpeedIn">
            
            <a href="veg.jsp"> <h3> VEG</h3></a>   
        </div> &nbsp;
          <div id="rcorners4" style=" background-image: url(img/chicken.jpg); width: 50%; height: 100px; background-size: 100%;" class="wow rollIn" >
            
            <a href="nonveg.jsp"> <h3>NON-VEG</h3></a>   
        </div>&nbsp;
          <div id="rcorners4" style=" background-image: url(images/3.jpg); width: 50%; height: 100px; background-size: 100%;" class="wow lightSpeedIn" >
            
            <a href="pizza.jsp"> <h3>PIZZA</h3></a>   
        </div>&nbsp;
          <div id="rcorners4" style=" background-image: url(img/drinks1.jpg); width: 50%; height: 100px; background-size: 100%;" class="wow rollIn" >
            
            <a href="drinks.jsp"> <h3>DRINKS</h3></a>   
        </div>
         <div class="wow fadeInUp" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" heigth="50" width="60"/></li>
        <li><img src="img/insta.png" alt="insta"  heigth="50" width="60"/></li>
         <li><img src="img/tweet.png" alt="tweet" heigth="50" width="60"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" heigth="50" width="60"/></li>
    
    </ul>
</div>          
	 <div class="header-cont">
             <div class="header"></div>
           
          
            <a href="edit.jsp"><img src="img/profile.png" style="height:100px ;width:100px"/></a>
            <%out.print("<font id='carttext' style='color:gold'>"+session.getAttribute("i1")+"</font>");%>
          <a href="cart.jsp"> <img src="img/cart3.jpg" alt="cart" style="height: 100px;width: 100px"/></a>
          
           
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
