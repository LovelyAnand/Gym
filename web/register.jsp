<%-- 
    Document   : register
    Created on : Nov 16, 2017, 5:55:05 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-color: black;
            }
            *{
                color:green;
            }
            h1{
                font-family: cursive;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <hr>
        <img src="images/logo.jpg">
        <hr>        <h1>REGISTER</h1>
         <form action="dbregister.jsp" method="post">
        <table border="2">
            <tr><td>Enter the name</td>
                <td><input type="text" name="name" id="name"></td></tr>
             <tr><td>enter the lastname</td>
                <td><input type="text" name="lname" id="lname"></td></tr>
            <tr><td>enter the password</td>
                <td><input type="text" name="pass" id="pass"></td></tr>
            <tr><td>enter the mobile number</td>
                <td><input type="text" name="mob" id="mob"></td></tr>
            <tr><td><select name="role"><option>customer</option></select>
            <td><input type="submit" name="submit"value="submit"></td></tr>
           
            
    </center>
            
    
        </table>
        </form>
   
        <br><br>
                
        
        
        
       
        
    </center>
    </body>
</html>
