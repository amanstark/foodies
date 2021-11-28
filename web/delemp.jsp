<%-- 
    Document   : delemp
    Created on : 17 Apr, 2018, 1:19:47 PM
    Author     : sumit singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","sumit123");
                int k1=Integer.parseInt(request.getParameter("t5"));
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select eid from employee");
              PreparedStatement ps=con.prepareStatement("delete from employee where eid="+k1+"");
                        ps.execute();
                        if(rs.next())
                        {
                        if(k1!=rs.getInt(1))
                        {
                            request.setAttribute("user2","enter correct name");
                        }
                      
                        }
                       %>

              <jsp:forward page="employee.jsp"></jsp:forward>
<%
                    
               
                
              
               
          }
            catch(Exception e){}
            %>
    </body>
</html>
