<%-- 
    Document   : remove
    Created on : Nov 21, 2017, 7:52:58 PM
    Author     : User
--%>

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
            h1{
                color:red;
            }
            body{
                background-color: black;    
            }
            h3{
                color:red;
            }
        </style>
    </head>
    <center>
    <body>
        <form>
        <h1>Removing Customer</h1>
        <h3>enter the name to delete a particular customer</h3><br><br>
        <input type="text"name="remove"><br><br>
        <input type="submit"value="submit">
        <%
            String name=request.getParameter("remove");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
            String sql="delete from members where name='"+name+"'";
            String sql1="delete from customer where name='"+name+"'";
            Statement stmt=con.createStatement();
            int r=stmt.executeUpdate(sql);
             r=stmt.executeUpdate(sql1);
             if(r>0)
             {
        %><script type="text/javascript">
            alert("the name you have entered is removed from the database");</script><%
             }


con.close();
        }catch(Exception e)
        {
            out.println(e.getMessage());
        }
        
        
        
        
        %>
        </form>
    </body>
    </center>
</html>
