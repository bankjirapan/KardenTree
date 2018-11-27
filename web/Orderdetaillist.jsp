<%-- 
    Document   : Orderdetaillist
    Created on : Nov 27, 2018, 11:31:40 PM
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
            <th>OrderdetailID</th>
            <th>ProductID</th>
            <th>Quantity</th>
            <th>Price</th>
            <c:forEach items="${orderdetail}" var="o">
            <tr>
                <td>${o.orderdetailid}</td>
                <td>${o.productid}</td>
                <td>${o.quantity}</td>
                <td>${o.price}</td>
            </tr>
            
            </c:forEach>
            
        </table>
        
    </body>
</html>

