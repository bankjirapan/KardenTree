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

        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Products 
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item active" href="#">Product</a> </nav>
            </div>
        </div>

        <div id="content" class="py-3 py-lg-6">
            <div class="container">
                <div class="row">
                    <!-- Products grid -->
                    <div class="col-lg-9 order-lg-2">
                        <!-- Products filters -->
                        <div class="row">
                            <div class="col-lg-6 mb-3 mb-lg-0">
                                <form action="Product" class="form-inline justify-content-lg-start text-sm">
                                    <label class="control-label mr-2">Keyword:</label>
                                    <input type="text" name="search" class="form-control form-control-sm mr-lg-2" placeholder="Search on KardenTree">

                                </form>
                            </div>
                            <div class="col-lg-6">
                                <form id="formSortby" action="Product" class="form-inline justify-content-lg-end text-sm">
                                    <label class="control-label mr-2">Sort By:</label>
                                    <select id="SortBy" name="SortBy" class="form-control form-control-sm">
                                        <option value="a-b">Name (A - Z)</option>
                                        <option value="z-a">Name (Z - A)</option>
                                        <option value="PriceLow">Price (Low &gt; High)</option>
                                        <option value="PriceHigh">Price (High &gt; Low)</option>

                                    </select>

                                </form>
                            </div>

                        </div>
                        <hr class="my-4">
                        <div class="row">
                            <!-- กรณีไม่ได้ Search -->
                        <c:if test="${OKSearch==null}">
                            <c:forEach items="${product}" var="Showproduct">
                                <div class="col-lg-4">
                                    <!-- Product 2 -->
                                    <div class="card mb-4 product-card overlay-hover">
                                        <!-- Hover content -->
                                        <div class="overlay-hover-content overlay-op-7">
                                            <a href="AddCart?productid=${Showproduct.productid}" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                                            <a href="Product?view=${Showproduct.productid}" class="text-white text-sm">View Product Details</a> <a href="#" class="text-white text-sm">Add to Wishlist</a> 
                                        </div>
                                        <!-- Image & price content -->
                                        <div class="pos-relative">
                                            <img class="card-img-top img-fluid" src="${URL}/${Showproduct.picture}" alt="Card image cap">
                                            <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">${Showproduct.price}</span> 
                                        </div>
                                        <!-- Content -->
                                        <div class="card-body">
                                            <small class="text-muted text-uppercase"><span class="text-primary">${Showproduct.category}</span> / ${Showproduct.type}</small>
                                            <h4 class="card-title">
                                                ${Showproduct.productname}
                                            </h4>
                                            <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i> </p>
                                        </div>
                                        <div class="card-footer">
                                            <small class="text-muted">${Showproduct.quantity} in stock</small>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>

                        <!--กรณีมาจากค้นหา-->
                        <c:if test="${OKSearch == 1}">
                            <c:forEach items="${ProductSearch}" var="ProductSearch">
                                <div class="col-lg-4">
                                    <!-- Product 2 -->
                                    <div class="card mb-4 product-card overlay-hover">
                                        <!-- Hover content -->
                                        <div class="overlay-hover-content overlay-op-7">
                                            <a href="AddCart?productid=${ProductSearch.productid}" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                                            <a href="Product?view=${ProductSearch.productid}" class="text-white text-sm">View Product Details</a> <a href="#" class="text-white text-sm">Add to Wishlist</a> 
                                        </div>
                                        <!-- Image & price content -->
                                        <div class="pos-relative">
                                            <img class="card-img-top img-fluid" src="${URL}/${ProductSearch.picture}" alt="Card image cap">
                                            <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">${ProductSearch.price}</span> 
                                        </div>
                                        <!-- Content -->
                                        <div class="card-body">
                                            <small class="text-muted text-uppercase"><span class="text-primary">${ProductSearch.category}</span> / ${ProductSearch.type}</small>
                                            <h4 class="card-title">
                                                ${ProductSearch.productname}
                                            </h4>
                                            <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i> </p>
                                        </div>
                                        <div class="card-footer">
                                            <small class="text-muted">${ProductSearch.quantity} in stock</small>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>

                        <!--กรณีมาจากค้นหา-->
                        <c:if test="${OKSearch == 2}">
                            <c:forEach items="${ProductSearch}" var="ProductSearch">
                                <div class="col-lg-4">
                                    <!-- Product 2 -->
                                    <div class="card mb-4 product-card overlay-hover">
                                        <!-- Hover content -->
                                        <div class="overlay-hover-content overlay-op-7">
                                            <a href="AddCart?productid=${ProductSearch.productid}" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                                            <a href="Product?view=${ProductSearch.productid}" class="text-white text-sm">View Product Details</a> <a href="#" class="text-white text-sm">Add to Wishlist</a> 
                                        </div>
                                        <!-- Image & price content -->
                                        <div class="pos-relative">
                                            <img class="card-img-top img-fluid" src="${URL}/${ProductSearch.picture}" alt="Card image cap">
                                            <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">${ProductSearch.price}</span> 
                                        </div>
                                        <!-- Content -->
                                        <div class="card-body">
                                            <small class="text-muted text-uppercase"><span class="text-primary">${ProductSearch.category}</span> / ${ProductSearch.type}</small>
                                            <h4 class="card-title">
                                                ${ProductSearch.productname}
                                            </h4>
                                            <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i> </p>
                                        </div>
                                        <div class="card-footer">
                                            <small class="text-muted">${ProductSearch.quantity} in stock</small>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>

                    </div>
                    <!-- Call to action -->
                    <div class="my-3 clickable-element" data-url="#">
                        <hr class="hr-lg mt-0 mb-1 w-100 mx-auto hr-danger">
                        <div class="pos-relative">
                            <i class="fa fa-bullseye icon-bg op-1 icon-bg-l-ol icon-25x text-white"></i> <i class="fa fa-bullseye icon-bg op-1 icon-bg-r-ol icon-bg-b icon-25x text-white"></i> 
                            <div class="p-4 text-center bg-danger">
                                <h2 class="display-4 font-weight-normal text-uppercase text-white my-0 text-slab">
                                    Clearance Sale
                                </h2>
                                <h4 class="text-white mb-0 text-slab">
                                    Price reductions on 1000s of items!
                                </h4>
                            </div>
                        </div>
                        <hr class="hr-lg mt-1 w-100 mx-auto hr-danger">
                    </div>
                    <!-- Pagination -->
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-lg justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span> </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span> </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- Products sidebar -->
                <div class="col-lg-3 order-lg-1">


                    <!-- Sections Menu-->
                    <ul class="nav nav-section-menu mb-4 py-3">
                        <li class="nav-header">Collections</li>
                            <c:forEach items="${category}" var="Category">
                            <li>
                                <a href="#mens" data-toggle="collapse" class="nav-link text-uppercase text-slab first active show">
                                    ${Category.categoryname}

                                    <i class="fa fa-angle-right"></i>
                                </a>
                                <!--                                <ul class="nav nav-section-menu collapse show" id="mens">
                                                                    <li><a href="#" class="nav-link">Shoes</a></li>
                                                                    <li><a href="#" class="nav-link">Shirts</a></li>
                                                                    <li><a href="#" class="nav-link">Trousers</a></li>
                                                                    <li><a href="#" class="nav-link">Suits</a></li>
                                                                    <li><a href="#" class="nav-link">Jackets</a></li>
                                                                    <li><a href="#" class="nav-link">Sportswear</a></li>
                                                                    <li><a href="#" class="nav-link">Shorts</a></li>
                                                                    <li><a href="#" class="nav-link">Swimwear</a></li>
                                                                    <li><a href="#" class="nav-link">T-shirts</a></li>
                                                                </ul>-->
                            </li>
                        </c:forEach>

                    </ul>
                    <div class="p-3 overlay overlay-op-5 rounded flex-valign mb-4 clickable-element bg-img blazy-bg b-loaded" data-css="{&quot;background-position&quot;:&quot;center bottom&quot;}" data-url="shop-product.html" style="background-position: center bottom; background-image: url(&quot;assets/img/shop/promo-truck.jpg&quot;);">
                        <h4 class="text-white mb-0">
                            Free Shipping
                        </h4>
                        <p class="text-white mb-0">On all orders over $100</p>
                        <hr class="hr-lg my-2 w-20 mx-auto hr-primary">
                    </div>

                    <!-- Follow Widget -->
                    <div class="mb-4">
                        <hr class="hr-lg mt-0 mb-2 w-10 ml-0 hr-primary">
                        <h4 class="text-uppercase font-weight-bold mt-0">
                            Follow us on
                        </h4>
                        <!--@todo: replace with company social media details-->
                        <a href="#" class="btn btn-icon btn-dark btn-rounded"> <i class="fab fa-twitter"></i> <span class="sr-only">Twitter</span> </a>
                        <a href="#" class="btn btn-icon btn-dark btn-rounded"> <i class="fab fa-facebook-f"></i> <span class="sr-only">Facebook f</span> </a>
                        <a href="#" class="btn btn-icon btn-dark btn-rounded"> <i class="fab fa-linkedin-in"></i> <span class="sr-only">Linkedin in</span> </a>
                        <a href="#" class="btn btn-icon btn-dark btn-rounded"> <i class="fab fa-google-plus-g"></i> <span class="sr-only">Google plus g</span> </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<jsp:include page="Layout/Footer.jsp"></jsp:include>

<script>

    $(document).ready(function () {

        $('#SortBy').change(function () {


            $('#formSortby').submit();



        });

    });

</script>
</html>
