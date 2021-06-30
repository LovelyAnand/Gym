<%-- 
    Document   : view
    Created on : Nov 16, 2017, 8:00:42 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-color: olive;
            }
            h1{
                font-size:40px;
                color:aqua;
            }
            .b3{
                float:right;
                border-radius:8px;
                background-color:red;
            }
        </style>
        
    </head>
    <body>
        <center>
            <a href="login.jsp">  <input type="button"class="b3"value="logout"></a>
        <h1>GYM MANAGEMENT</h1>
        
    
<table border='1'width="80%">
        <tr style="background-color: yellow"><th><h3><b>Customer name</b></h3></th>
                        <th><h3><b>last name</b></h3></th>
                        <th><h3><b>Password</b></h3></th>
                        <th><h3><b>Mobile</b></h3></th>
                        <th><h3><b>Role</b></h3></th></tr><br>
                   
        
        <%
            try{
                String name;
                String item_name;
                String price;
                String address;
                String mobile;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
        String sql="select * from members";
        Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next())
            {
                %>
                
                     <tr style="background-color: green"><td><b><%=rs.getString(1) %></b></td>
                        <td><b><%=rs.getString(2)%></b></td>
                        <td><b><%=rs.getString(3)%></b></td>
                        <td><b><%=rs.getString(4)%></b></td>
                        <td><b><%=rs.getString(5)%></b></td></tr>
                    
       
                    
                    <%          
                
            }
}catch(Exception e)
{
System.out.println(e.getMessage());
}

            %>
           </table>
            </center>
        
    </body>
</html>
