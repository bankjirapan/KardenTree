<%--
    Document   : Navbar
    Created on : Nov 8, 2018, 4:48:09 PM
    Author     : bankcom
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${sessionScope.account.activated == false}">
    <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
        <strong>Warning</strong> Your Account has not been activated. Please confirm account at email : ${sessionScope.account.email}
    </div>
</c:if>
<!-- ======== @Region: #header ======== -->
<div id="header">
    <div data-toggle="sticky">

        <!--Header search region - hidden by default -->
        <div class="header-search collapse" id="search">
            <form action="Product" method="get" class="search-form container">
                <input type="text" name="search" class="form-control search" value="" placeholder="Search">
                <button type="button" class="btn btn-link"><span class="sr-only">Search </span><i class="fa fa-search fa-flip-horizontal search-icon"></i></button>
                <button type="button" class="btn btn-link close-btn" data-toggle="search-form-close"><span class="sr-only">Close </span><i class="fa fa-times search-icon"></i></button>
            </form>
        </div>

        <!--Header & Branding region-->
        <div class="header">
            <!-- all direct children of the .header-inner element will be vertically aligned with each other you can override all the behaviours using the flexbox utilities (flexbox.html) All elements with .header-brand & .header-block-flex wrappers will automatically be aligned inline & vertically using flexbox, this can be overridden using the flexbox utilities (flexbox.htm) Use .header-block to stack elements within on small screen & "float" on larger screens use .order-first or/and .order-last classes to make an element show first or last within .header-inner or .headr-block elements -->
            <div class="header-inner container">
                <!--branding/logo -->
                <div class="header-brand">
                    <a class="header-brand-text" href="Home" title="Home">
                        <h1 class="h2">
                            <span class="header-brand-text-alt">Karden</span>Tree<span class="header-brand-text-alt">.</span>
                        </h1>
                    </a>
                    <div class="header-divider d-none d-lg-block"></div>
                    <div class="header-slogan d-none d-lg-block">Shop UI</div>
                </div>
                <!-- other header content -->
                <div class="header-block order-12">
                    <div class="flex-column text-right d-none d-lg-flex mr-2">
                        <h6 class="my-0 mb-1">
                            <i class="fa fa-truck text-primary"></i> Free Worldwide Shipping
                        </h6>
                        <h6 class="my-0 text-muted font-weight-normal">
                            <i class="fa fa-phone text-primary"></i> (+44) 7283643345
                        </h6>
                    </div>

                    <!--Search trigger -->
                    <a href="#search" class="btn btn-icon btn-link header-btn float-right order-11" data-toggle="search-form" data-target=".header-search"><i class="fa fa-search fa-flip-horizontal search-icon"></i></a>

                    <!-- mobile collapse menu button - data-toggle="collapse" = default BS menu - data-toggle="off-canvas" = Off-cavnas Menu - data-toggle="overlay" = Overlay Menu -->
                    <a href="#top" class="btn btn-link btn-icon header-btn float-right d-lg-none" data-toggle="off-canvas" data-target=".navbar-main" data-settings='{"cloneTarget":true, "targetClassExtras": "navbar-offcanvas"}'> <i class="fa fa-bars"></i> </a>
                    <div class="header-divider d-none d-lg-block"></div>

                    <!--Shopping cart-->
                    <div class="dropdown dropdowns-no-carets dropdown-effect-fadeup float-right">
                        <a href="#" class="btn btn-icon btn-dark btn-link float-right dropdown-toggle cart-link" data-toggle="dropdown">
                            <span class="cart-link-icon"> <i class="fa fa-shopping-cart"></i> <span class="sr-only">Cart</span> 
                                <c:if test="${sessionScope.cart.totalQuantity != null}">
                             <span class="cart-link-count bg-primary text-white">${sessionScope.cart.totalQuantity}</span>
                                </c:if>
                                </span>
                        </a>

                        <!--Shopping cart dropdown -->
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow cart-dropdown-menu" role="menu">
                            <h5 class="dropdown-header mb-0">
                                Your Shopping Cart
                            </h5>
                            <hr class="mt-0 mb-3" />
                            <!--Shopping cart items-->
                            <div class="cart-items">
                                <!--Shopping cart item 1 -->
                                <c:forEach items="${sessionScope.cart.lineItems}" var="cartList">
                                    <div class="cart-items-item">
                                        <a href="#" class="cart-img mr-2 float-left">
                                            <img class="img-fluid" src="assets/img/shop/gloves-1-thumb.jpg" alt="Product 1">
                                        </a>
                                        <div class="float-left">
                                            <h5 class="mb-0">
                                                ${cartList.product.productname}
                                            </h5>
                                            <p class="mb-0"></p>
                                            <a href="Cart?remove=${cartList.product.productid}" class="close cart-remove text-primary"> <i class="fa fa-times"></i> </a>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                            <!--End of Shopping cart items-->
                            <hr class="mt-3 mb-0" />
                            <div class="dropdown-footer text-center">
                                <h5 class="font-weight-bold">
                                    Total: <span class="text-primary">${sessionScope.totalprice}</span>
                                </h5>
                                <a href="shop-cart.html" tabindex="-1" class="btn btn-outline-primary btn-sm btn-rounded mx-2">View Cart</a> <a href="shop-checkout.html" tabindex="-1" class="btn btn-primary btn-sm btn-rounded mx-2">Checkout</a>
                            </div>
                        </div>
                    </div>
                    <!-- end of shopping cart -->
                </div>
            </div>
        </div>

        <div class="navbar navbar-expand-md">
            <!--everything within this div is collapsed on mobile-->
            <div class="navbar-main collapse bg-grey-dark navbar-dark">
                <div class="container clearfix">
                    <!--main navigation-->
                    <ul class="nav navbar-nav float-lg-left navbar-nav-flush dropdown-effect-fadeup">
                        <!-- Shop Homepage -->
                        <li class="nav-item"> <a href="Home" class="nav-link">HOME</a> </li>
                        <li class="nav-item"> <a href="Product" class="nav-link">Product</a> </li>
                        <!-- Shop Pages -->

                    </ul>
                    <!-- All Categories menu -->
                    <ul class="nav navbar-nav float-lg-right navbar-nav-flush-right dropdown-effect-fadeup">
                        <li class="nav-item dropdown dropdowns-no-carets dropdown-persist">
                            <a href="#" class="nav-link dropdown-toggle" id="account-drop" data-toggle="dropdown" data-hover="dropdown"><i class="fa fa-user mr-2"></i>${sessionScope.account != null ? sessionScope.account.fname : "My Account"}</a>
                            <!-- Dropdown Menu -->
                            <c:if test="${sessionScope.account == null}">
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="Login" class="dropdown-item">Sign in</a>
                                    <a href="Register" class="dropdown-item">Register</a>

                                </div>
                            </c:if>

                            <c:if test="${sessionScope.account != null}">
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="#" class="dropdown-item">My Wish List</a>
                                    <a href="#" class="dropdown-item">Order History</a>
                                    <a href="#" class="dropdown-item">Track Orders</a>
                                    <a href="logout" class="dropdown-item">Logout</a>
                                </div>
                            </c:if>



                        </li>
                        <li class="nav-item dropdown dropdowns-no-carets dropdown-persist">  </li>
                    </ul>
                </div>
            </div>
            <!--/.navbar-collapse -->
        </div>
    </div>
</div>
