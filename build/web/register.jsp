<%-- 
    Document   : register
    Created on : 3 Dec, 2017, 4:51:44 PM
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
                       <script type="text/javascript">
function validate()
{
    var psw=document.f1.t5.value;
    var cpsw=document.f1.t6.value;
    var x=document.f1.t3.value;
    var pos=x.indexOf("@");
    var dpos=x.lastIndexOf(".");
    var num=document.f1.t2.value;
    if(isNaN(num)){
        document.getElementId("numloc").innerHTML="Enter number only";
        return false;
    }
    
    if(pos<1 ||dpos<pos+2||dpos+2>=x.length)
    {
        alert("Please enter valid email address"+pos+"\n dpos:"+dpos);
        return false;
    }
    if(psw != cpsw)
    {
        alert("Password dosen't match");
        return false;
    }
  if(document.f1.Name.value=="")
  {
   alert("please provide your name");
   document.f1.Name.focus();
   return false;
  }
  
  return(true);
   } 
</script>
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
<div id="rcorners2" class="animated flash">
            <h3>REGISTER</h3>
            
			<%if(request.getAttribute("reg")!=null){
		 out.print("<font style='color:red'>"+request.getAttribute("reg")+"</font>");
		} %>
            <form  name="f1" method="post" onSubmit="return(validate())" action="registerprocess.jsp">
                <table cellspacing="5" cellpadding="5" id="td1">
                    <tr><td>NAME:</td><td> <input id="iptext" type="text" name="t1" /></td></tr>
                    <tr><td>CONTACT NO:</td><td> <input id="iptext" type="text" name="t2" id="numloc" /></td></tr>
                    <tr><td>EMAIL ID:</td><td> <input id="iptext1" type="text" name="t3" /></td></tr>
                    <tr><td>USERNAME:</td><td> <input id="iptext" type="text" name="t4" /></td></tr>
                    <tr><td>PASSWORD:</td><td> <input id="iptext" type="password" name="t5" /></td></tr>
                    <tr><td>CONFIRM PASSWORD:</td><td> <input id="iptext" type="password" name="t6" /></td></tr>
                    <tr><td></td><td><input id="btn" type="submit" value="Done"/></td></tr>
                 
                </table> 
            </form>
</div>
        
                <div class="animated fadeInLeftBig" id="navigationfoot">
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
