<%-- 
    Document   : LoginView
    Created on : Nov 1, 2018, 4:12:01 PM
    Author     : ryan.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Login" method="post">
            Username <input type="text" name="username" required>
            <br>
            Password <input type="password" name="password" required>
            <br>
            <input type="submit">
        </form>
    </body>
</html>
