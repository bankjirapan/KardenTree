<%-- 
    Document   : CheckoutConfirmView
    Created on : Nov 25, 2018, 4:14:04 PM
    Author     : llujo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=Checkout"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>


        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Confirmation
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="Product">Product</a> <span class="breadcrumb-item active">Confirmation</span> </nav>
            </div>
        </div>

        <div id="content" class="py-5">
            <div class="container">
                <div class="text-center mb-6">
                    <i class="fa fa-check-circle icon-6x text-success"></i> 
                    <h3>
                        Your order has been successfully placed!
                    </h3>
                    <h4 class="font-weight-normal">
                        Your order number is: 346899-2834-ZZA
                    </h4>
                    <p>A confirmation email has been sent to your email address: example@example.com.</p>
                </div>
                <h4>
                    Order Summary
                </h4>
                <table class="table table-responsive mb-0 cart-table cart-table-summary">
                    <tbody>
                        <!-- Cart item 1 -->
                         <c:forEach items="${cartList.lineItems}" var="cl">
                        <tr>
                            <td class="text-left w-10">
                                <a href="#">
                                     <img class="cart-img img-fluid" src="assets/img/ProductImg/${cl.product.productname}.jpg" alt="Product 1">
                                </a>
                            </td>
                            <td class="w-75"> <span class="font-weight-bold">${cl.product.productname}</span> / ${cl.product.price} x ${cl.quantity} </td>
                            <td class="text-md-right w-15"><span class="font-weight-bold">${cl.product.price*cl.quantity}</span></td>
                        </tr>
                         </c:forEach>
                       
                    </tbody>
                </table>
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
                                    Subtotal: ${totalprice}
                                </h4>
                                
                                <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                                <h3>
                                    Total: <span class="text-primary">${totalprice} Bath</span> <!-- รอการแก้ไขตัว discount --->
                                </h3>
                                <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                            </div>
                            <!-- Proceed to checkout -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>


<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>