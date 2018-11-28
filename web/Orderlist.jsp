<%--
    Document   : Home
    Created on : Nov 2, 2018, 10:54:42 AM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=KradenTree"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a>

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>



        <div class="container" style="margin: 30px;">
            <div class="row">
                <div class="col-sm-12">
                    <h2>OrderList</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">

                    <div class="table-responsive">
                        <table class="table">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>OrderID</th>
                                    <th>OrderDate</th>
                                    <th>TotalPrice</th>
                                    <th>x</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${orders}" var="o">
                                <tr>
                                    <td>${o.orderid}</td>
                                    <td>${o.orderdate}</td>
                                    <td>${o.totalprice}</td>
                                    <td><input onclick="window.location = 'Orderlist?detail=detail&orderid=${o.orderid}'" type="button" value="View Detail"></td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</body>
<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>