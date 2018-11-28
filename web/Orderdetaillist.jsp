<%--
    Document   : Home
    Created on : Nov 2, 2018, 10:54:42 AM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=KradenTree"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">



    <jsp:include page="Layout/Navbar.jsp"></jsp:include>
        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Order History Detail
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="profile">MyAccount</a> <a class="breadcrumb-item" href="Orderlist">Order History</a> <span class="breadcrumb-item active">Order History Detail</span> </nav>
            </div>
        </div>
        
            <div id="content" class="py-6">
                <div class="container">
                    <!-- Shopping cart -->
                    <div class="cart-content">
                        <table class="table table-responsive mb-0 cart-table">
                            <tr>
                                <th class="w-5">OrderID</th>
                                <th class="w-20">Product Id</th>
                                <th class="w-10">Quantity</th>
                                <th class="w-5">Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${orderdetail}" var="o">
                                <tr>
                                    <td>${o.orderid}</td>
                                    <td>${o.productid}</td>
                                    <td>${o.quantity}</td>
                                    <td>${o.price}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>



            </div>
                </div>
            </div>
      


            </body>
            <jsp:include page="Layout/Footer.jsp"></jsp:include>
            </html>

