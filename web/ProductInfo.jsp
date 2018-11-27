<%-- 
    Document   : ProductInfo
    Created on : Nov 15, 2018, 1:11:01 AM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=KardenTree view"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a>

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>

        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Products : ${ProductView.productname}
            </h3>
            <!-- Page header breadcrumb -->
            <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item"
                                                                                                       href="Product">Product</a> <span class="breadcrumb-item active">Product :
                    ${ProductView.productname}</span></nav>
        </div>
    </div>

    <div id="content" class="pt-3 pt-lg-6 pb-lg-0">
        <div class="container">
            <!-- Product view -->
            <div class="row">
                <div class="col-lg-5">
                    <!-- Shop product carousel Uses Owl Carousel plugin All options here are customisable from the data-owl-carousel-settings="{OBJECT}" item via data- attributes: http://www.owlgraphic.com/owlcarousel/#customizing ie. data-settings="{"items": "4", "lazyLoad":"true", "navigation":"true"}" -->
                    <div class="product-gallery pos-relative">
                        <div class="bg-info text-white rounded pos-absolute pos-zindex-2 mt-2 ml-2 py-2 px-3">On Sale</div>
                        <div class="owl-carousel owl-nav-over owl-loaded owl-drag" id="product-gallery" data-toggle="owl-carousel"
                             data-owl-carousel-settings="{&quot;responsive&quot;:{&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true, &quot;dots&quot;:false}}}">

                            <div class="owl-stage-outer">
                                <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2670px;">
                                    <div class="owl-item active" style="width: 445px;"><a href="#" data-img-zoom=""
                                                                                          class="d-block" style="position: ${URL}/assets/img/ProductImg/${ProductView.productname}.jpg; overflow: hidden;">
                                            <img src="${URL}/assets/img/ProductImg/${ProductView.productname}.jpg" alt="ProductImg" class="lazyOwl img-fluid"
                                                 width="200">
                                            <img role="presentation" src="${URL}/assets/img/ProductImg/${ProductView.productname}.jpg" class="zoomImg"
                                                 style="position: absolute; top: -13.9373px; left: -60.5629px; opacity: 0; width: 604px; height: 400px; border: none; max-width: none; max-height: none;"></a></div>


                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="card product-card mb-4">
                        <!-- Ribbon -->
                        <div class="card-ribbon card-ribbon-bottom card-ribbon-right bg-primary text-white">Top Rated</div>
                        <!-- Content -->
                        <div class="card-body p-4 pos-relative">
                            <!-- Product details -->
                            <p class="text-muted text-uppercase text-xs mb-0"><span class="text-primary">${ProductView.category}</span>
                                / ${ProductView.type}</p>
                            <h2 class="card-title mb-2">
                                ${ProductView.productname}
                            </h2>
                            <h4 class="font-weight-bold text-primary">

                                ${ProductView.price}
                            </h4>
                            <div class="product-offer-countdown">
                                <p class="mb-t mb-0 text-xs">Offers end in:</p>
                                <div class="countdown countdown-done" data-countdown="2018/8/16" data-countdown-format="<span class=&quot;count&quot;>
                                     <span class=&quot;digit&quot;>%-d</span> days
                                     </span>
                                     <span class=&quot;count&quot;><span class=&quot;digit&quot;>%-H</span> hrs</span>
                                     <span class=&quot;count&quot;><span class=&quot;digit&quot;>%-M</span> mins</span>
                                     <span class=&quot;count&quot;><span class=&quot;digit&quot;>%-S</span> secs</span>
                                     ">
                                </div>
                            </div>
                            <div class="pos-md-absolute pos-t pos-r mr-4 mt-3 text-md-right">
                                <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i
                                    class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i
                                    class="fa fa-star text-primary"></i>
                                <p class="my-0 text-xs">10 reviews | <a href="#reviews">write review</a></p>
                            </div>
                            <hr class="my-3">
                            <p class="text-muted text-sm">${ProductView.detail}</p>

                            <hr class="my-3 mb-5">
                            <!-- Cart options/links -->

                            <a href="AddCart?page=info&productid=${ProductView.productid}" class="btn btn-primary"><i
                                    class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                            <a href="#" class="btn btn-link btn-sm"><i class="fa fa-heart"></i> Add to Wishlist</a>
                            <p class="text-muted text-xs d-inline d-none d-lg-block">${ProductView.quantity} in stock</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <!-- Product tabs, @see: elements-navs-tabbable.htm -->
                    <div class="card mt-5 border-top-0">
                        <div class="card-header bg-white pt-0 px-0">
                            <ul class="nav nav-tabs nav-justified card-header-tabs flex-column flex-md-row">
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold active show"
                                                         href="#product-description" data-toggle="tab">Details</a> </li>
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold" href=""
                                                         data-toggle="tab">Specification</a> </li>
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold" href=""
                                                         data-toggle="tab">Reviews (10)</a> </li>
                            </ul>
                        </div>
                        <div class="card-body p-4">
                            <div class="tab-content">
                                <!-- Tab 1: Description tab content -->
                                <div class="tab-pane active show" id="product-description">
                                    <h4 class="card-title">
                                        Product Description
                                    </h4>
                                    <p class="card-text">${ProductView.detail}</p>
                                    <p class="card-text">${ProductView.productname}</p>
                         
                                </div>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /container -->
        <hr class="mt-6 mb-0">

        <div class="container py-4 py-lg-6">
            <hr class="hr-lg mt-0 mb-3 w-10 mx-auto hr-primary" />
            <h2 class="text-center text-uppercase font-weight-bold my-0">
                New Arrivals
            </h2>
            <hr class="mb-5 w-50 mx-auto" />

            <div class="mt-4 owl-nav-over owl-nav-over-lg" data-toggle="owl-carousel" data-owl-carousel-settings='{"responsive":{"0":{"items":1}, "600":{"items":2}, "980":{"items":4}}, "margin":10, "nav":true, "dots":false}'>
                <!-- Product 1 -->
                <c:forEach items="${productAll}" var="newProduct" begin="0" end="7">
                    <div class="card product-card overlay-hover">
                        <!-- Hover content -->
                        <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                            <h4 class="text-white">
                                ${newProduct.productname}
                            </h4>
                            <a href="AddCart?productid=${newProduct.productid}&page=Home" class="btn btn-primary text-uppercase font-weight-bold mb-2"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                            <a href="Product?view=${newProduct.productid}" class="text-white text-sm">View Product Details</a>
                        </div>
                        <!-- Image & price content -->
                        <div class="pos-relative">
                            <img class="card-img-top img-fluid" src="${URL}/assets/img/ProductImg/${newProduct.productname}.jpg" alt="Card image cap">
                            <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">
                                ${newProduct.price} ฿

                            </span>
                        </div>
                    </div>

                </c:forEach>

            </div>
        </div>
    </div>




</body>
<jsp:include page="Layout/Footer.jsp"></jsp:include>

</html>