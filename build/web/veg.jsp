<%-- 
    Document   : veg
    Created on : 12 Dec, 2017, 9:09:33 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>foodies</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
           <link href="animate.css" rel="stylesheet"/>
           <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
           <script src="lib/wow.min.js"></script>
            <script>
              new WOW().init();
              </script>
    </head>
    <body>
        &nbsp;
       <h2 class=" animated fadeIn">foodies</h2>
       
         <div class="animated slideInRight" id="navigation">
    <ul>
    <li><a href="index.jsp">HOME</a></li>
     
    <li><a href="nonveg.jsp">NON-VEG</a></li>
    <li><a href="pizza.jsp">PIZZA</a></li>
    <li><a href="drinks.jsp">DRINKS</a></li>
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
       <a href="cart.jsp">cart</a>
       
       <h2 style="text-decoration: underline; color:gold" class="wow rotateInUpRight">VEG ITEMS</h2>
       &nbsp;
       <table cellspacing="5" cellpadding="20">
           <tr>
               <td>
       <div id="rcorners5">
         
           <table cellspacing="5" class="wow flipInY">
               <form action="itemprocess.jsp" method="post">
                <th> <img src="img/chole.jpg" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Desi Chole</td></tr>
                <tr><td id="txt2">Rs 200</td></tr>
                
                <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="101" name="f1"/>   
                     
                
                <tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
               </form>
              </table>
       </div>
               </td>
               <td>
            <div id="rcorners5">
                <table cellspacing="5" class="wow flipInX">
                     <form action="itemprocess.jsp" method="post">
                <th> <img src="img/paneer.jpg" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Paneer</td></tr>
                <tr><td id="txt2">Rs 300</td></tr>
                <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="102" name="f1"/>   
                     
                <tr><td></td></tr>   
                
<tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
                     </form>
              </table>
         </div>
       </td>
           </tr>
       <tr>
           <td>
       <div id="rcorners5">
         
           <table cellspacing="5" class="wow flipInY">
               <form method="post" action="itemprocess.jsp">
                <th> <img src="img/kolapuri.png" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Veg Kolhapuri</td></tr>
                <tr><td id="txt2">Rs 400</td></tr>
                 <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="103" name="f1"/>   
                     
                <tr><td></td></tr>   
                
<tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
               </form>
              </table>
       </div>
           </td>
           <td>
            <div id="rcorners5">
                <table cellspacing="5" class="wow flipInX">
                    <form method="post" action="itemprocess.jsp">
                <th> <img src="img/korma.jpg" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Veg Korma</td></tr>
                <tr><td id="txt2">Rs 350</td></tr>
                <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="104" name="f1"/>
                
                <tr><td></td></tr>   
                
<tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
                    </form>
              </table>
         </div>
       </td>
       </tr>
       
        <tr>
           <td>
       <div id="rcorners5">
         
           <table cellspacing="5" class="wow flipInY">
               <form method="post" action="itemprocess.jsp">
                <th> <img src="img/dumaloo.jpg" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Dum aloo</td></tr>
                <tr><td id="txt2">Rs 250</td></tr>
                <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="105" name="f1"/>
                
                
                <tr><td></td></tr>   
                
<tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
               </form>
              </table>
       </div>
           </td>
            <td>
       <div id="rcorners5">
         
           <table cellspacing="5" class="wow flipInY">
                <form method="post" action="itemprocess.jsp">
                <th> <img src="img/pavbhaji.jpg" alt="chole" style="height:200px ;width:280px"/></th>
                <tr><td id="txt2">Pav Bhaji</td></tr>
                <tr><td id="txt2">Rs 150</td></tr>
                <tr><td> Qty: <select id="drop" name="qty" placeholder="QTY">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                           </select> </td></tr>
              
                        <input type="hidden" value="106" name="f1"/>
                <tr><td></td></tr>   
                
<tr><td><input type="submit" id="btncart" value="ADD TO CART"/></td></tr>
                </form>
              </table>
       </div>
           </td>
        </tr>
       </table>
       <div class="wow fadeInUp" id="navigationfoot">
    <ul>
        <li><img src="img/fb.jpg" alt="fb" heigth="50" width="60"/></li>
        <li><img src="img/insta.png" alt="insta"  heigth="50" width="60"/></li>
         <li><img src="img/tweet.png" alt="tweet" heigth="50" width="60"/></li>
     <li><img src="img/whatsapp.png" alt="tweet" heigth="50" width="60"/></li>
    
    </ul>
</div>
      <div class="header-cont">
           <div class="header"> </div>
           
           <a href="cart.jsp"> <img src="img/cart3.jpg" alt="cart" style="height: 100px;width: 100px"/></a>
            <%out.print("<font id='carttext' style='color:gold'>"+session.getAttribute("i1")+"</font>");%>
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
