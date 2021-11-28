<%-- 
    Document   : edit
    Created on : 23 Mar, 2018, 11:14:54 PM
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
           <link href="sweetalert.css" type="text/css" rel="stylesheet">
          
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
    <li><a href="admin.jsp">ADMIN</a></li>
    <li><a href="gallery.jsp">GALLERY</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    <li><a href="index.jsp">LOG OUT</a></li>
    </ul>
         </div>
         <%@page import="java.sql.*"%>
        <div id="rcorners1">
            <h4 style="color: yellow">Edit Profile</h4>
            <form method="post" action="updateprofile.jsp">
            <table id="td1">
                  <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
Statement stmt=con.createStatement();
String f1=session.getAttribute("user1").toString();
                ResultSet rs=stmt.executeQuery("select * from customer where user='"+f1+"'");
                while(rs.next())
                {
                    %>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" value="<%=rs.getString("name")%>" id="iptext" name="x1"></td>
                     </tr>
                     <tr>
                        <td>Email</td>
                        <td><input type="text" value="<%=rs.getString("email")%>" id="iptext1" name="x2"></td>
                     </tr>
                     <tr>
                        <td>Mobile No.</td>
                        <td><input type="text" value="<%=rs.getString("phone")%>" id="iptext" name="x3"></td>
                     </tr>
                     <tr>
                         <td><input type="submit" id="btn" value="Update"/></td>
                     </tr>
                     
                        <%
                    
                }
    }
    catch(Exception e){}
    %>
    
            </table>
        </form>
    <input type="submit" value="time" onclick="msg()"/>
        </div>
     <script src="lib/sweetalert.js"></script>
     <script type="text/javascript">
        function msg()
        {
            swal("Good job","you sucessfully updated your profile","sucess");
        }
    </script>
    </body>
</html>
