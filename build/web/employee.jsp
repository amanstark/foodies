<%-- 
    Document   : emoloyee
    Created on : 16 Mar, 2018, 11:36:25 PM
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
             
<style>
.accordion {
    background-color:yellow;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 50%;
    border: 20px steelblue;
    text-align: left;
    outline:black;
    font-size: 15px;
    transition: 0.4s;
}

.active, .accordion:hover {
    background-color: #ccc; 
}

.panel {
    padding: 0 18px;
    display: none;
    background-color: white;
    overflow: hidden;
    width: 47%;
    
}
</style>

    </head>
    <body>
        <h2>Employee Details</h2>
       
         <%@page import="java.sql.*"%>
        
            
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from employee");
                %>
                <table border="2" cellspacing="5" id="custable" >
                    <tr>
                        <td>Employee ID</td>
                        <td>Name</td>
                        <td>Designation</td>
                        <td>Salary</td>
                       
                    </tr>
                    <%
                        while(rs.next())
                        {
                          %>
                          <tr>
                              <td><%=rs.getInt(1)%></td>
                               <td><%=rs.getString(2)%></td> 
                               <td><%=rs.getString(3)%></td>
                               <td><%=rs.getString(4)%></td>
                           </tr>
                      <%
                        }
                       %>
                </table>
                <%
                
            }
            catch(Exception e){}
                %>
                <br><br>
                <br>
                <br>
            <button class="accordion">Add Employee</button>
<div class="panel">
    <form action="addemp.jsp" method="post">
        ID:<input type="number" name="t1" id="iptext"/><br>
        Name:<input type="text" name="t2" id="iptext"/><br>
        Designation:<input type="text" name="t3" id="iptext"/><br>
        Salary:<input type="number" name="t4" id="iptext"/><br>
        <input type="submit" value="ADD" id="btn"/>
    </form>
</div>

<button class="accordion">Delete Employee</button>
<div class="panel">
    <form action="delemp.jsp" method="post">
        Enter ID:<input type="number" name="t5" id="iptext">
        <input type="submit" value="DELETE" id="btn"/>
    </form>
</div>

    
          <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>       
    </body>
</html>
