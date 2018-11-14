<%--
    Document   : Home
    Created on : Nov 2, 2018, 10:54:42 AM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=KardenTree"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a>

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>


        <!-- ======== @Region: #highlighted ======== -->


        <!-- ======== @Region: #content ======== -->
        <div id="content" class="p-0">
            <!-- Promos -->

            <!-- Featured Products -->
            <div id="features" class="container py-4 py-lg-6">
                <hr class="hr-lg mt-0 mb-3 w-10 mx-auto hr-primary" />
                <h2 class="text-center text-uppercase font-weight-bold my-0">
                    All Products
                </h2>
                <h5 class="text-center font-weight-light mt-2 mb-0 text-muted">
                    Great products, Great environment !
                </h5>
                <hr class="mb-5 w-50 mx-auto" />
                <!-- Products cards -->
                <div class="card-deck-wrapper">
                    <div class="card-deck">

                    <c:forEach items="${product}" var="Product">

                        <!-- Product 1 -->
                        <div class="card product-card overlay-hover">
                            <!-- Hover content -->
                            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                                <a href="" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>

                            </div>
                            <!-- Image & price content -->
                            <div class="pos-relative">
                                <img class="card-img-top img-fluid" src="${URL}/${Product.picture}" alt="Card image cap">
                                <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">

                                    ${Product.price} ฿
                                </span>
                            </div>
                            <!-- Content -->
                            <div class="card-body">
                                <small class="text-muted text-uppercase"><span class="text-primary">${Product.type}</span> / ${Product.type}</small>
                                <h4 class="card-title">
                                    ${Product.productname}
                                </h4>
                                <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i>
                                </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${Product.quantity} in Stock</small>
                            </div>
                        </div>
                    </c:forEach>


                </div>
            </div>
        </div>
        <!-- Call to action -->

        <!-- New Products -->

    </div>

    <!-- ======== @Region: #content-below ======== -->



</body>
<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>
