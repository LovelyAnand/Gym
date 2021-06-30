<%-- 
    Document   : view_equip
    Created on : Nov 20, 2017, 6:15:54 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .tr{
                
                
            }
            body{
                background-color: black;
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
    <center>
    <body>
        <table border='1'width="80%">
        <tr style="background-color: yellow"><th><h3><b>sl.no</b></h3></th>
                        <th><h3><b>Equipment_Name</b></h3></th>
                <hr>
        <img src="images/logo.jpg">
        <hr>
        <h1>View Equipment</h1>   

        <%
        try{
                String sl_no;
                String equip_name;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
        String sql="select * from equipment";
        Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next())
            {
                %>
                
                     <tr style="background-color: green"><td align="center"><b><%=rs.getString(1) %></b></td>
                        <td align="center"><b><%=rs.getString(2)%></b></td></tr>
                    
       
                    
                    <%          
                
            }
}catch(Exception e)
{
System.out.println(e.getMessage());
}

            %>
           
        
        
    </center>
       
    </body>
</html>
