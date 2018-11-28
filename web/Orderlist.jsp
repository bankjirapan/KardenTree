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


        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Order History
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="profile">MyAccount</a> <span class="breadcrumb-item active">Order History</span> </nav>
            </div>
        </div>
        <div id="content" class="py-6">
            <div class="container">
                <!-- Shopping cart -->
                <div class="cart-content">
                    <!--Shopping cart items-->
                    <table class="table table-responsive mb-0 cart-table">
                        <thead>
                            <tr>
                                <th class="w-5">OrderID</th>
                                <th class="w-20">Order Date</th>
                                <th class="w-10">Total Price</th>
                                <th class="w-5">Detail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Cart item 1 -->
                        <c:forEach items="${orders}" var="o">
                            <tr>
                                <td>${o.orderid}</td>
                                <td>${o.orderdate}</td>
                                <td>${o.totalprice}</td>
                                <td><input class="btn btn-info" onclick="window.location = 'Orderlist?detail=detail&orderid=${o.orderid}'" type="button" value="View Detail"></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <!--End of Shopping cart items-->
                <hr class="my-4 hr-lg">

            </div>
        </div>
    </div>



    <jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>