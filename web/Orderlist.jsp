<%-- 
    Document   : Orderlist
    Created on : Nov 27, 2018, 10:54:03 PM
    Author     : ryan.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <th>OrderID</th>
            <th>OrderDate</th>
            <th>TotalPrice</th>
            <c:forEach items="${orders}" var="o">
            <tr>
                <td>${o.orderid}</td>
                <td>${o.orderdate}</td>
                <td>${o.totalprice}</td>
                <td><input onclick="window.location='Orderlist?detail=detail&orderid=${o.orderid}'" type="button" value="View Detail"></td>
            </tr>
            
            </c:forEach>
            
        </table>
        
    </body>
</html>
