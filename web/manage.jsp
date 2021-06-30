<%-- 
    Document   : manage
    Created on : Nov 21, 2017, 7:14:56 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
        <form>
    <body>
        <h1>Managing Customers</h1>
        <input type="submit"name="b1"value="removing_customer">
        <%
        String b1=request.getParameter("b1");
        String b2=request.getParameter("b2");
        if(b1!=null)
        {
            response.sendRedirect("remove.jsp");
        }
        
        
        %>
    </center>
</form>
    </body>
</html>
