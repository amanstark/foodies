<%-- 
    Document   : customer
    Created on : 13 Mar, 2018, 11:21:22 PM
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
        <h2>Customer Detail</h2>
        <%@page import="java.sql.*"%>
        
            
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select user,email,name,phone from customer");
                %>
                
                <table border="2" cellspacing="5" id="custable">
            
            <th>Username</th>
            <th>Email</th>
            <th>Name</th>
            <th>Contact</th>
            
           
                  <%
                while(rs.next())
                {
                    %>
                     
                    <tr>
                    
                     <td><%=rs.getString(1)%></td>
                     <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(3)%></td>
                       <td><%=rs.getString(4)%></td>
                       
                    </tr>
                       <%
                }
            }
            catch(Exception e){}
            %>
         </table>
         <h3>Delete record from table</h3>
         
			<%if(request.getAttribute("user2")!=null){
		 out.print("<font style='color:red'>"+request.getAttribute("user1")+"</font>");
		} %>
         <form method="post" action="deletecust.jsp" style="text-align: center">
             <input type="text" id="iptext1" placeholder="enter username" name="a1" style="width: 20% "/><br>
             <input type="submit" value="Delete" id="btn"/>
         </form>
                 
    </body>
</html>
