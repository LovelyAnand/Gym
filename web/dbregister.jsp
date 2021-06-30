<%-- 
    Document   : dbregister
    Created on : Nov 16, 2017, 5:58:37 PM
    Author     : User
--%>

<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String lname=request.getParameter("lname");
            String pass=request.getParameter("pass");
            String mob=request.getParameter("mob");
            String role=request.getParameter("role");
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
        String sql="insert into members values('"+name+"','"+lname+"','"+pass+"','"+mob+"','"+role+"')";
        String sql1="insert into customer values('"+name+"','"+lname+"','"+pass+"','"+mob+"','"+role+"')";
        java.sql.Statement stmt=con.createStatement();
        int r=stmt.executeUpdate(sql);
        r=stmt.executeUpdate(sql1);
        if(r>0)
        {
        %><script type="text/javascript">
            alert("data dumped into database successfully");
            window.location.href="login.jsp";
            </script><%
        }
else if(r==0)
{
%><script type="text/javascript">
    alert("invalid data entry");
    window.location.href="register.jsp";
    </script><%}
        
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        
        
        
        %>
    </body>
</html>
