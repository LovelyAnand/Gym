<%-- 
    Document   : login.jsp
    Created on : Nov 16, 2017, 5:02:10 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            td{
                font-family: monospace;
                color:green;
                font-size:large;
            }
            caption{
                font-family:monospace;
                font-size:40px;
                color:aqua;
            }
            body{
                background-color: black;
            }
            .b1{
                background-color: green;
                border-radius: 8px;
                width: 100px;
            }
            select{
                width:50%;
            }
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"href="css/style.css">
    </head>
    <form action="loginverify.jsp"method="post">
        <center>
    <body>
        <hr>
        <img src="images/logo.jpg">
        <hr>
        <table border="2"width="40%"height="50%">
            <caption>LOGIN</caption><br>
            <tr><td>enter the username</td>
                <td><input type="text"name="uname"></td></tr>
            <tr>
                <td>enter the password</td>
                <td><input type="password"name="pass"></td>
            </tr>
             <tr>
                 <td>
            <select name="options">
                <option>admin</option>
                <option>customer</option>
            </select></td>
        </tr>
        
           </table>
        <br>
        <input type="submit"value="login"class="b1"><br><br>
        <a href="register.jsp">click here to register</a>
        </center>
    </body>
    </form>
</html>
