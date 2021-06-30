<%-- 
    Document   : admin
    Created on : Nov 16, 2017, 7:24:24 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .b1{border-radius:8px;
            background-color:red;
            }
            .b2{
                border-radius:8px;
                background-color: red;
                float:right;
            }
            h1{
                font-family: cursive;
                color:aqua;
            }
            body{
                background-color: black;
            }
            table{
                color:green;
            }
            
        </style>
    
    <form action="adminverify.jsp">
    </head>
    <body>
        
    <center>
        <hr>
       
        <img src="images/logo.jpg">
        <hr>
        <a href="login.jsp"><input type="button"value="logout"class="b2"></a><br> 
        <h1>ADMIN PAGE</h1>
        <table border="1"width="20%"height="20%">
            <tr><td align="center"><input type="submit"name="b1"value="view member"class="b1"></td></tr>
            <td align="center"><input type="submit"name="b2"value="view customers"class="b1"></td>
        </tr>
        <td align="center"><input type="submit"name="b3"value="view equipments"class="b1"></td>
        </tr>
            <td align="center"><input type="submit"name="b4"value="view trainers"class="b1"></td>
        </tr>
           <td align="center"><input type="submit"name="b5"value="time table"class="b1"></td>
        </tr>
        </tr>
           <td align="center"><input type="submit"name="b6"value="manage"class="b1"></td>
        </tr>
       
       </table>
      </center>
     </body>
</form>
</html>

