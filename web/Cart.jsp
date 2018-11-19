<%-- 
    Document   : Cart.jsp
    Created on : Nov 19, 2018, 10:47:23 PM
    Author     : llujo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=View Cart"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a>

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>


        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Cart
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="Product">Product</a> <span class="breadcrumb-item active">Cart</span> </nav>
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
                                <th class="w-5"></th>
                                <th class="w-10"></th>
                                <th class="w-20">Item</th>
                                <th class="w-20">Unit Price</th>
                                <th class="w-20">Quantity</th>
                                <th class="w-20 text-md-right">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Cart item 1 -->
                        <c:forEach items="${cartList.lineItems}" var="cl">
                            <tr>
                                <td class="text-center align-middle">
                                    <a href="Cart?page=cart&remove=${cl.product.productid}" class="close cart-remove"> <i class="fa fa-times"></i> </a>
                                </td>
                                <td class="text-center">
                                    <a href="#">
                                        <img class="cart-img img-fluid" src="assets/img/ProductImg/${cl.product.productname}.jpg" alt="Product 1">
                                    </a>
                                </td>
                                <td> <span class="font-weight-bold">${cl.product.productname}</span> </td>
                                <td>${cl.product.price }</td>
                                <td>
                                    <div class="input-group input-group-quantity" data-toggle="quantity">
                                        <span class="input-group-prepend">
                                            <a href="Cart?quantity=minus&productid=${cl.product.productid}"><input type="button" value="-" class="btn btn-secondary quantity-down" field="quantity"></a>
                                        </span>
                                        <input type="text" name="quantity" value="${cl.quantity}" class="quantity form-control">
                                        <span class="input-group-append">
                                            <a href="Cart?quantity=plus&productid=${cl.product.productid}"><input type="button" value="+" class="btn btn-secondary quantity-up" field="quantity"></a>                                        </span>
                                    </div>
                                </td>
                                <td class="text-md-right"><span class="font-weight-bold">${cl.product.price*cl.quantity}</span></td>
                            </tr>
                        </c:forEach>
                            
                     
                        </tbody>
                    </table>
                    <!--End of Shopping cart items-->
                    <hr class="my-4 hr-lg">
                    <div class="cart-content-footer">
                        <div class="row">
                            <div class="col-md-4">
                                <h6 class="text-muted mb-3">
                                    All prices are including VAT
                                </h6>
                                <!-- Discount form -->
                                <form action="#" role="form">
                                    <div class="input-group">
                                        <label class="sr-only" for="discount">Discount code</label>
                                        <input type="tel" class="form-control" id="discount" placeholder="Discount code">
                                        <span class="input-group-append">
                                            <button class="btn btn-dark" type="button">Go</button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-8 text-md-right mt-3 mt-md-0">
                                <div class="cart-content-totals">
                                    <h4 class="font-weight-light">
                                        Subtotal: ${sessionScope.totalprice}
                                    </h4>
                                    <h4 class="font-weight-light">
                                        Discount (10%): <span class="text-danger">-$5.97</span>
                                    </h4>
                                    <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                                    <h3>
                                        Total: <span class="text-primary">${sessionScope.totalprice} Bath</span>
                                    </h3>
                                    <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                                </div>
                                <!-- Proceed to checkout -->
                                <a href="Product" class="btn btn-outline-primary btn-rounded btn-lg">Continue Shopping</a> <a href="" class="btn btn-primary btn-rounded btn-lg">Proceed To Checkout</a> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </body>


<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>