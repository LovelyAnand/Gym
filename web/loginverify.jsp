<%-- 
    Document   : verify
    Created on : Aug 27, 2017, 5:02:46 PM
    Author     : Ranjith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       <%
          Connection con;
          Statement st;
          ResultSet rs;
          String fname=request.getParameter("uname");
          String psw=request.getParameter("pass");
       String role1=request.getParameter("options"); 
          try
          {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3307/gymmanagement","root","root");
           String sql="select * from members where name='"+fname+"' and pass='"+psw+"'and role='"+role1+"'";
           st=con.createStatement();
           rs=st.executeQuery(sql);
           while(rs.next())
           {
               String g_name=rs.getString(1);
               String g_pass=rs.getString(3);
               String g_role=rs.getString(5);
               if(g_name.equals(fname)&&g_pass.equals(psw)&&g_role.equals("admin"))
               {
                   %><script type=text/javascript>
                       alert("admin login successfully");
                   window.location.href="adminpage.jsp";
                                  </script><%
               }
               else if(g_name.equals(fname)&&g_pass.equals(psw)&&g_role.equals("customer"))
               {
%>              <script type=text/javascript>
                alert("logged on to the homepage successfully");
                   window.location.href="index.html";
                                  </script><%
               }
                else if(g_name!=(fname)&&g_pass!=(psw))
               {
                   %>
                   <script type=text/javascript>
                       alert("invalid entry")
                   window.location.href="login1.jsp";
                                  </script>
                                  <%
               }
           }  
          }
          catch(Exception e)
          {
              System.out.println(e.getMessage());
            }
          
        
       
        
        %>
            
    </body>
</html>
