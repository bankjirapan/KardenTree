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
            <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="Product">Product</a> <span class="breadcrumb-item active">Product :  ${ProductView.productname}</span></nav>
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
                        <div class="owl-carousel owl-nav-over owl-loaded owl-drag" id="product-gallery" data-toggle="owl-carousel" data-owl-carousel-settings="{&quot;responsive&quot;:{&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true, &quot;dots&quot;:false}}}">

                            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2670px;"><div class="owl-item active" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/shoes-2.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/shoes-2.jpg" alt="Shoes image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/shoes-2.jpg" class="zoomImg" style="position: absolute; top: -13.9373px; left: -60.5629px; opacity: 0; width: 604px; height: 400px; border: none; max-width: none; max-height: none;"></a></div><div class="owl-item" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/mens-sports-2.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/mens-sports-2.jpg" alt="Nike Training Top image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/mens-sports-2.jpg" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 400px; border: none; max-width: none; max-height: none;"></a></div><div class="owl-item" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/promo-kids.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/promo-kids.jpg" alt="Kids Wolly Jumper image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/promo-kids.jpg" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 400px; border: none; max-width: none; max-height: none;"></a></div><div class="owl-item" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/promo-kids-hoodies.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/promo-kids-hoodies.jpg" alt="Kids Hoodies image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/promo-kids-hoodies.jpg" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 400px; border: none; max-width: none; max-height: none;"></a></div><div class="owl-item" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/mens-sports.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/mens-sports.jpg" alt="Nike Training Top image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/mens-sports.jpg" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 400px; border: none; max-width: none; max-height: none;"></a></div><div class="owl-item" style="width: 445px;"><a href="#" data-img-zoom="assets/img/shop/promo-mens-2.jpg" class="d-block" style="position: relative; overflow: hidden;">
                                            <img src="assets/img/shop/promo-mens-2.jpg" alt="Leather Jacket image" class="lazyOwl img-fluid" width="200">
                                            <img role="presentation" src="assets/img/shop/promo-mens-2.jpg" class="zoomImg" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 600px; height: 400px; border: none; max-width: none; max-height: none;"></a></div></div></div><div class="owl-nav"><div class="owl-prev disabled">prev</div><div class="owl-next">next</div></div><div class="owl-dots disabled"></div></div>
                        <div class="owl-thumbs owl-carousel owl-loaded owl-drag" data-toggle="owl-carousel" data-owl-carousel-thumbs="#product-gallery" data-owl-carousel-settings="{&quot;nav&quot;:false, &quot;dots&quot;:false, &quot;margin&quot;:5}">

                            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 900px;"><div class="owl-item active" style="width: 145px; margin-right: 5px;"><a class="owl-thumb active">
                                            <img class="img-fluid" src="assets/img/shop/shoes-2.jpg" alt="Card image cap">
                                        </a></div><div class="owl-item active" style="width: 145px; margin-right: 5px;"><a class="owl-thumb">
                                            <img class="img-fluid" src="assets/img/shop/mens-sports-2.jpg" alt="Card image cap">
                                        </a></div><div class="owl-item active" style="width: 145px; margin-right: 5px;"><a class="owl-thumb">
                                            <img class="img-fluid" src="assets/img/shop/promo-kids.jpg" alt="Card image cap">
                                        </a></div><div class="owl-item" style="width: 145px; margin-right: 5px;"><a class="owl-thumb">
                                            <img class="img-fluid" src="assets/img/shop/promo-kids-hoodies.jpg" alt="Card image cap">
                                        </a></div><div class="owl-item" style="width: 145px; margin-right: 5px;"><a class="owl-thumb">
                                            <img class="img-fluid" src="assets/img/shop/mens-sports.jpg" alt="Card image cap">
                                        </a></div><div class="owl-item" style="width: 145px; margin-right: 5px;"><a class="owl-thumb">
                                            <img class="img-fluid" src="assets/img/shop/promo-mens-2.jpg" alt="Card image cap">
                                        </a></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots disabled"></div></div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="card product-card mb-4">
                        <!-- Ribbon -->
                        <div class="card-ribbon card-ribbon-bottom card-ribbon-right bg-primary text-white">Top Rated</div>
                        <!-- Content -->
                        <div class="card-body p-4 pos-relative">
                            <!-- Product details -->
                            <p class="text-muted text-uppercase text-xs mb-0"><span class="text-primary">${ProductView.category}</span> / ${ProductView.type}</p>
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
                                <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> 
                                <p class="my-0 text-xs">10 reviews | <a href="#reviews">write review</a></p>
                            </div>
                            <hr class="my-3">
                            <p class="text-muted text-sm">${ProductView.detail}.</p>

                            <hr class="my-3 mb-5">
                            <!-- Cart options/links -->

                            <a href="" class="btn btn-primary"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
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
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold active show" href="#product-description" data-toggle="tab">Details</a> </li>
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold" href="#product-spec" data-toggle="tab">Specification</a> </li>
                                <li class="nav-item"> <a class="nav-link py-md-4 text-uppercase font-weight-bold" href="#product-reviews" data-toggle="tab">Reviews (10)</a> </li>
                            </ul>
                        </div>
                        <div class="card-body p-4">
                            <div class="tab-content">
                                <!-- Tab 1: Description tab content -->
                                <div class="tab-pane active show" id="product-description">
                                    <h4 class="card-title">
                                        Product Description
                                    </h4>
                                    <p class="card-text">Abigo bene luptatum neo pagus suscipit. Esca hos nulla paratus quidne quis. Cui facilisis genitus natu. Loquor melior obruo. Dignissim ut virtus ymo.</p>
                                    <p class="card-text">Cui lobortis modo mos. Abluo bene hos minim nisl oppeto proprius quae torqueo ymo. Appellatio eligo erat gravis ille iriure pecus.</p>
                                    <p class="card-text">Appellatio enim eum ideo jumentum neo paratus quae valetudo. Eligo enim hendrerit nunc sagaciter si te utinam. Appellatio bene diam fere illum oppeto refero roto scisco sino.</p>
                                </div>
                                <!-- Tab 2: Specification tab content -->
                                <div class="tab-pane" id="product-spec">
                                    <h4 class="card-title">
                                        Product Specification
                                    </h4>
                                    <p class="card-text">Esca lenis quia ut wisi. Abbas ad capto consequat ideo melior minim refoveo scisco validus. Enim haero jugis pecus quibus ymo.</p>
                                    <table class="table table-sm table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Size</th>
                                                <th>Colour</th>
                                                <th>Width</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>123cm</td>
                                                <td>Red</td>
                                                <td>1.4 metres</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>300cm</td>
                                                <td>Yellow</td>
                                                <td>10.4 metres</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>156cm</td>
                                                <td>Blue</td>
                                                <td>1003 km</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Tab 3: Reviews tab content -->
                                <div class="tab-pane" id="product-reviews">
                                    <h4 class="card-title">
                                        Product Reviews
                                    </h4>
                                    <i class="fa fa-star text-primary icon-1x"></i> <i class="fa fa-star text-primary icon-1x"></i> <i class="fa fa-star text-primary icon-1x"></i> <i class="fa fa-star text-primary icon-1x"></i> <i class="fa fa-star text-primary icon-1x"></i> <span class="my-0 text-xs">10 reviews</span> 
                                    <hr class="my-4">
                                    <ul class="comments mt-3 list-unstyled">
                                        <li class="media mb-3 pos-relative">
                                            <a href="#">
                                                <img src="assets/img/team/robert.jpg" alt="Picture of Mike Thompson" class="d-flex mr-3 img-thumbnail img-fluid">
                                            </a>
                                            <div class="media-body">
                                                <ul class="list-inline blog-meta text-muted">
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Sat 4th Aug 2018</li>
                                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Kylie Michaels</a></li>
                                                </ul>
                                                <h5 class="mt-0 mb-2">
                                                    Magna aliquet diam mauris tortor turpis vel porta
                                                </h5>
                                                <p class="mb-1">Magna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel porta</p>
                                                <p><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i></p>
                                            </div>
                                        </li>
                                        <li class="media mb-3 pos-relative">
                                            <a href="#">
                                                <img src="assets/img/team/robert.jpg" alt="Picture of Sara Mason" class="d-flex mr-3 img-thumbnail img-fluid">
                                            </a>
                                            <div class="media-body">
                                                <ul class="list-inline blog-meta text-muted">
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Wed 1st Aug 2018</li>
                                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Tim Rice</a></li>
                                                </ul>
                                                <h5 class="mt-0 mb-2">
                                                    a nec in sed hac ultrices cursus
                                                </h5>
                                                <p class="mb-1">a nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursus</p>
                                                <p><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i></p>
                                            </div>
                                        </li>
                                        <li class="media mb-3 pos-relative">
                                            <a href="#">
                                                <img src="assets/img/team/bono.jpg" alt="Picture of Alexander Vanjuvic" class="d-flex mr-3 img-thumbnail img-fluid">
                                            </a>
                                            <div class="media-body">
                                                <ul class="list-inline blog-meta text-muted">
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Thu 26th Jul 2018</li>
                                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Kylie Michaels</a></li>
                                                </ul>
                                                <h5 class="mt-0 mb-2">
                                                    a nec in sed hac ultrices cursus
                                                </h5>
                                                <p class="mb-1">a nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursus</p>
                                                <p><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i></p>
                                            </div>
                                        </li>
                                        <li class="media mb-3 pos-relative">
                                            <a href="#">
                                                <img src="assets/img/team/obama.jpg" alt="Picture of Sara Mason" class="d-flex mr-3 img-thumbnail img-fluid">
                                            </a>
                                            <div class="media-body">
                                                <ul class="list-inline blog-meta text-muted">
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Sun 22nd Jul 2018</li>
                                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Sara Mason</a></li>
                                                </ul>
                                                <h5 class="mt-0 mb-2">
                                                    Porta risus porttitor facilisis sit dapibus
                                                </h5>
                                                <p class="mb-1">Porta risus porttitor facilisis sit dapibusPorta risus porttitor facilisis sit dapibusPorta risus porttitor facilisis sit dapibusPorta risus porttitor facilisis sit dapibus</p>
                                                <p><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i><i class="fa fa-star text-primary"></i></p>
                                            </div>
                                        </li>
                                    </ul>
                                    <hr class="my-4">
                                    <h4>
                                        Add Review
                                    </h4>
                                    <form id="reviews-form" class="comment-form mt-3" role="form">
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label class="sr-only" for="comment-name">Name</label>
                                                <input type="text" class="form-control mb-3" id="comment-name" placeholder="Name">
                                                <label class="sr-only" for="comment-name">Email</label>
                                                <input type="email" class="form-control mb-3" id="comment-email" placeholder="Email">
                                                <select class="form-control" placeholder="Star rating">
                                                    <option>- Stars -</option>
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label class="sr-only" for="comment-comment">Comment</label>
                                                <textarea rows="7" class="form-control" id="comment-comment" placeholder="Comment"></textarea>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary float-right">Submit</button>
                                    </form>
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
                <c:forEach items="${product}" var="newProduct" begin="0" end="7">
                    <div class="card product-card overlay-hover">
                        <!-- Hover content -->
                        <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                            <h4 class="text-white">
                                ${newProduct.productname} 
                            </h4>
                            <a href="" class="btn btn-primary text-uppercase font-weight-bold mb-2"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                        </div>
                        <!-- Image & price content -->
                        <div class="pos-relative">
                            <img class="card-img-top img-fluid" src="${URL}/${newProduct.picture}" alt="Card image cap">
                            <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">
                                ${newProduct.price} ฿

                            </span>
                        </div>
                    </div>

                </c:forEach>

            </div>
        </div>




</body>
<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>
