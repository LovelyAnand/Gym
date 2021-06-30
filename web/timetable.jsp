<%-- 
    Document   : timetable
    Created on : Nov 20, 2017, 6:50:20 PM
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
        <hr>
        <img src="images/logo.jpg">
        <hr>
        <h1>Time Table</h1>
        <table border='1'width="80%">
        <tr style="background-color: yellow"><th><h3><b>Slno</b></h3></th>
                        <th><h3><b>Day</b></h3></th>
                        <th><h3><b>Time</b></h3></th>
                        <th><h3><b>Session Trainers</b></h3></th>
                   

        <%
        try{
                String slno;
                String day ;
                String Time;
                String trainers;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
        String sql="select * from timetable";
        Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next())
            {
                %>
                
                     <tr style="background-color: green"><td align="center"><b><%=rs.getString(1) %></b></td>
                        <td align="center"><b><%=rs.getString(2)%></b></td>
                        <td align="center"><b><%=rs.getString(3)%></b></td>
                        <td align="center"><b><%=rs.getString(4)%></b></td></tr>
                    
       
                    
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
