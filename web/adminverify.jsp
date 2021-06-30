<%-- 
    Document   : adminverify
    Created on : Nov 16, 2017, 7:39:50 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String b1=request.getParameter("b1");
        String b2=request.getParameter("b2");
        String b3=request.getParameter("b3");
        String b4=request.getParameter("b4");
        String b5=request.getParameter("b5");
        String b6=request.getParameter("b6");
        if(b1!=null)
        {
            response.sendRedirect("view.jsp");
        }
        else if(b2!=null)
        {
            response.sendRedirect("view_cust.jsp");
        }
        else if(b3!=null)
        {
            response.sendRedirect("view_equip.jsp");
        }
        else if(b4!=null)
        {
            response.sendRedirect("trainers.jsp");
        }
        else if(b5!=null)
        {
            response.sendRedirect("timetable.jsp");
        }
        else if(b6!=null)
        {
            response.sendRedirect("manage.jsp");
        }
        %>
    </body>
</html>
