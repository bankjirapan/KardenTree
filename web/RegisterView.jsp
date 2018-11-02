<%-- 
    Document   : RegisterView
    Created on : Nov 1, 2018, 4:46:46 PM
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
        Register
        <br>
        <form action="Register" method="post">
            Username <input type="text" name="username" required>
            <br>
            Password<input type="password" name="password" required>
            <br>
            Confirm Password <input type="password" name="confirm" required>
            <br>
            Firstname <input type="text" name="fname" required>
            <br>
            Lastname <input type="text" name="lname" required>
            <br>
            Email <input type="email" name="email" required>
            <br>
            Tel. <input type="number" name="tel" required>
            <br>
            <input type="submit" value="Register">
                           
        </form>
    </body>
</html>
