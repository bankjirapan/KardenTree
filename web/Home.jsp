<%-- 
    Document   : Home
    Created on : Nov 2, 2018, 10:54:42 AM
    Author     : bankcom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp?titleName=KardenTree"></jsp:include>

  <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">
    
    <!-- @plugin: page loading indicator, delete to remove loader -->
    <div class="page-loader" data-toggle="page-loader"></div>
    
    <a id="#top" href="#content" class="sr-only">Skip to content</a> 
    
    <!-- ======== @Region: #header ======== -->
    <div id="header">
      <div data-toggle="sticky">
        
        <!--Header search region - hidden by default -->
        <div class="header-search collapse" id="search">
          <form class="search-form container">
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
              <a class="header-brand-text" href="index.html" title="Home">
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
                  <span class="cart-link-icon"> <i class="fa fa-shopping-cart"></i> <span class="sr-only">Cart</span> <span class="cart-link-count bg-primary text-white">3</span> </span>
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
                    <div class="cart-items-item">
                      <a href="#" class="cart-img mr-2 float-left">
                        <img class="img-fluid" src="assets/img/shop/gloves-1-thumb.jpg" alt="Product 1">
                      </a>
                      <div class="float-left">
                        <h5 class="mb-0">
                          Gloves
                        </h5>
                        <p class="mb-0">$18.99 / x2</p>
                        <a href="#" class="close cart-remove text-primary"> <i class="fa fa-times"></i> </a>
                      </div>
                    </div>
                    <!--Shopping cart item 2 -->
                    <div class="cart-items-item">
                      <a href="#" class="cart-img mr-2 float-left">
                        <img class="img-fluid" src="assets/img/shop/shoes-1-thumb.jpg" alt="Product 2">
                      </a>
                      <div class="float-left">
                        <h5 class="mb-0">
                          Shoes
                        </h5>
                        <p class="mb-0">$12.99 / x1</p>
                        <a href="#" class="close cart-remove text-primary"> <i class="fa fa-times"></i> </a>
                      </div>
                    </div>
                    <!--Shopping cart item 3 -->
                    <div class="cart-items-item">
                      <a href="#" class="cart-img mr-2 float-left">
                        <img class="img-fluid" src="assets/img/shop/gloves-1-thumb.jpg" alt="Product 1">
                      </a>
                      <div class="float-left">
                        <h5 class="mb-0">
                          Gloves
                        </h5>
                        <p class="mb-0">$18.99 / x2</p>
                        <a href="#" class="close cart-remove text-primary"> <i class="fa fa-times"></i> </a>
                      </div>
                    </div>
                  </div>
                  <!--End of Shopping cart items-->
                  <hr class="mt-3 mb-0" />
                  <div class="dropdown-footer text-center">
                    <h5 class="font-weight-bold">
                      Total: <span class="text-primary">$50.97</span>
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
                <li class="nav-item"> <a href="shop.html" class="nav-link">Shop Home</a> </li>
                
                <!-- Shop Pages -->
                <li class="nav-item dropdown">
                  <a href="#" class="nav-link dropdown-toggle" id="pages-drop" data-toggle="dropdown" data-hover="dropdown">Shop Pages</a> 
                  <!-- Menu -->
                  <div class="dropdown-menu"> <a href="shop-grid.html" class="dropdown-item">Products Grid</a> <a href="shop-list.html" class="dropdown-item">Products List</a> <a href="shop-product.html" class="dropdown-item">Product View</a> <a href="shop-cart.html" class="dropdown-item">Cart</a> <a href="shop-checkout.html" class="dropdown-item">Checkout</a> <a href="shop-confirmation.html" class="dropdown-item">Confirmation</a> </div>
                </li>
                <li class="nav-item dropdown dropdown-mega-menu dropdown-persist active">
                  <a href="shop.html" class="nav-link dropdown-toggle" id="shop-mega-menu" data-toggle="dropdown" data-hover="dropdown">Shop Mega Menu</a> 
                  <!-- Dropdown Menu -->
                  <div class="dropdown-menu dropdown-menu-right dropdown-menu-nobullets" aria-labelledby="shop-mega-menu">
                    <div class="row">
                      <div class="col-lg-9">
                        <div class="row">
                          <div class="col-lg-3 dropdown-icons-default">
                            <h3 class="dropdown-header mb-0">
                              Mens
                            </h3>
                            <a href=".html" class="dropdown-item" tabindex="-1">Shoes</a> <a href=".html" class="dropdown-item" tabindex="-1">Shirts</a> <a href=".html" class="dropdown-item" tabindex="-1">Trousers</a> <a href=".html" class="dropdown-item" tabindex="-1">Suits</a> <a href=".html" class="dropdown-item" tabindex="-1">Jackets</a> <a href=".html" class="dropdown-item" tabindex="-1">Sportswear</a> <a href=".html" class="dropdown-item" tabindex="-1">Shorts</a> <a href=".html" class="dropdown-item" tabindex="-1">Swimwear</a> <a href=".html" class="dropdown-item" tabindex="-1">T-shirts</a> 
                          </div>
                          <div class="col-lg-3 dropdown-icons-default">
                            <h3 class="dropdown-header mb-0">
                              Womens
                            </h3>
                            <a href=".html" class="dropdown-item" tabindex="-1">Dresses</a> <a href=".html" class="dropdown-item" tabindex="-1">Jeans</a> <a href=".html" class="dropdown-item" tabindex="-1">Skirts</a> <a href=".html" class="dropdown-item" tabindex="-1">Suits</a> <a href=".html" class="dropdown-item" tabindex="-1">Jackets</a> <a href=".html" class="dropdown-item" tabindex="-1">Sportswear</a> <a href=".html" class="dropdown-item" tabindex="-1">Shorts</a> <a href=".html" class="dropdown-item" tabindex="-1">Swimwear</a> <a href=".html" class="dropdown-item" tabindex="-1">T-shirts</a> 
                          </div>
                          <div class="col-lg-3">
                            <h3 class="dropdown-header mb-0">
                              Childrens
                            </h3>
                            <a href=".html" class="dropdown-item" tabindex="-1">Shoes</a> <a href=".html" class="dropdown-item" tabindex="-1">Sports Wear</a> <a href=".html" class="dropdown-item" tabindex="-1">School Clothes</a> <a href=".html" class="dropdown-item" tabindex="-1">Trousers</a> <a href=".html" class="dropdown-item" tabindex="-1">Suits</a> <a href=".html" class="dropdown-item" tabindex="-1">Jackets</a> <a href=".html" class="dropdown-item" tabindex="-1">Sportswear</a> <a href=".html" class="dropdown-item" tabindex="-1">Swimwear</a> <a href=".html" class="dropdown-item" tabindex="-1">T-shirts</a> 
                          </div>
                          <div class="col-lg-3 dropdown-icons-default">
                            <h3 class="dropdown-header mb-0">
                              Baby
                            </h3>
                            <a href=".html" class="dropdown-item" tabindex="-1">Newborn</a> <a href=".html" class="dropdown-item" tabindex="-1">Toddler</a> <a href=".html" class="dropdown-item" tabindex="-1">Preschool</a> <a href=".html" class="dropdown-item" tabindex="-1">Winter Suits</a> <a href=".html" class="dropdown-item" tabindex="-1">Jackets</a> <a href=".html" class="dropdown-item" tabindex="-1">Sportswear</a> <a href=".html" class="dropdown-item" tabindex="-1">Swimwear</a> <a href=".html" class="dropdown-item" tabindex="-1">T-shirts</a> <a href=".html" class="dropdown-item" tabindex="-1">Trousers</a> 
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 d-none d-lg-block">
                        <h3 class="dropdown-header">
                          New Arrivals <span class="badge badge-primary text-uppercase">Hot</span>
                        </h3>
                        <div class="dropdown-widget">
                          <!-- Shop product carousel Uses Owl Carousel plugin All options here are customisable from the data-owl-carousel-settings="{OBJECT}" item via data- attributes: http://www.owlgraphic.com/owlcarousel/#customizing ie. data-settings="{"items": "4", "lazyLoad":"true", "navigation":"true"}" -->
                          <div class="products-carousel owl-nav-over" data-toggle="owl-carousel" data-owl-carousel-settings='{"items": 1,"responsive":{"0":{"items":1,"nav":true, "dots":false}}}'>
                            <a href="#">
                              <img src="assets/img/shop/jacket-1.jpg" alt="Item 1 image" class="lazyOwl img-fluid" />
                            </a>
                            <a href="#">
                              <img src="assets/img/shop/jacket-2.jpg" alt="Item 2 image" class="lazyOwl img-fluid" />
                            </a>
                            <a href="#">
                              <img src="assets/img/shop/jacket-3.jpg" alt="Item 3 image" class="lazyOwl img-fluid" />
                            </a>
                          </div>
                        </div>
                        <h3 class="dropdown-header">
                          Aug 2018 Offers
                        </h3>
                        <div class="p-3 overlay overlay-op-5 rounded flex-valign" data-bg-img="assets/img/shop/promo-truck.jpg" data-css='{"background-position":"center bottom"}' data-url="shop-product.html">
                          <h4 class="text-white mb-0">
                            Free Shipping
                          </h4>
                          <p class="text-white mb-0">On all orders over $100</p>
                          <hr class="hr-lg my-2 w-20 mx-auto hr-primary" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.dropdown-menu -->
                </li>
              </ul>
              <!-- All Categories menu -->
              <ul class="nav navbar-nav float-lg-right navbar-nav-flush-right dropdown-effect-fadeup">
                <li class="nav-item dropdown dropdowns-no-carets dropdown-persist">
                  <a href="#" class="nav-link dropdown-toggle" id="account-drop" data-toggle="dropdown" data-hover="dropdown"><i class="fa fa-user mr-2"></i>My Account</a>
                  <!-- Dropdown Menu -->
                  <div class="dropdown-menu dropdown-menu-right"> <a href="#" class="dropdown-item">My Wish List</a> <a href="#" class="dropdown-item">Order History</a> <a href="#" class="dropdown-item">Track Orders</a> </div>
                </li>
                <li class="nav-item dropdown dropdowns-no-carets dropdown-persist"> <a href="#" class="btn btn-primary btn-sm btn-rounded text-uppercase font-weight-bold px-3 ml-3">On Sale</a> </li>
              </ul>
            </div>
          </div>
          <!--/.navbar-collapse -->
        </div>
      </div>
    </div>
    
    <!-- ======== @Region: #highlighted ======== -->
    <div id="highlighted">
      <!-- Showshow - Slider Revolution see: plugins/slider-revolution/examples&sources for help invoke using data-toggle="slider-rev" options can be passed to the slider via HTML5 data- ie. data-startwidth="960" -->
      <div class="slider-wrapper rev_slider_wrapper bg-black" data-page-class="slider-appstrap-theme">
        <div class="rev_slider" data-toggle="slider-rev" data-settings='{"startwidth":1100, "startheight":500, "delay":10000}'>
          <ul>
            <!-- SLIDE 1 -->
            <li class="slide" data-transition="fadethroughdark" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="assets/img/shop/mens-1-thumb.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide" data-link="shop-list.html">
              <img src="assets/img/slide-dummy.png" style='background-color:#151513' data-lazyload="assets/img/transparent.png" alt="Background image" data-bgposition="center top" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina />
              <!-- SLIDE 1 Content-->
              <div class="slide-content container pos-zindex-80">
                <!--elements within .slide-content are pushed below navbar on "behind"-->
                <!-- Layer 1 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['140','140','140','140']" data-fontsize="['52','52','52','52']" data-lineheight="['52','52','52','52']" data-width="420" data-height="none" data-whitespace="normal" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1200,"to":"o:1;","delay":1300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="left"> <span class="font-weight-bold text-uppercase text-white">Menswear Sale Now On!</span>
</div>
                <!-- Layer 3 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['80','80','80','80']" data-fontsize="['20','20','20','30']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"delay":0,"speed":1200,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","delay":1400},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]' data-textAlign="['center','center','center','center']"> Up to 50% off selected brands!
</div>
                <!-- Layer 3 -->
                <div class="tp-caption rs-parallaxlevel-8" data-frames='[{"from":"o:0;sX:3;sY:3;","speed":1500,"to":"o:0.20;sX:3;sY:3;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1200,"to":"x:[100%];","ease":"Power3.easeInOut"}]' data-x="left" data-y="bottom" data-hoffset="0" data-voffset="0" data-width="none" data-height="none" data-type="image" data-basealign="slide"> <i class="fa fa-bullseye icon-20x icon-bg op-1 text-white"></i>
</div>
                <!-- Layer 4 -->
                <div class="tp-caption tp-resizeme bg-primary-bright" data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="bottom" data-voffset="120" data-width="380" data-height="4" data-basealign="slide"></div>
              </div>
              <div class="tp-caption tp-resizeme" data-x="['right','right','right','right']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']" data-voffset="['0','0','0','0']" data-width="full-proportional"
data-height="full-proportional"
data-whitespace="nowrap"
data-type="image" data-responsive_offset="on" data-frames='[{"delay":500,"speed":3800,"frame":"0","from":"opacity:0;x:150%;","to":"o:1;x:0;","ease":"Circ.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
data-textAlign="['inherit','inherit','inherit','inherit']"
data-paddingtop="[0,0,0,0]"
data-paddingright="[0,0,0,0]"
data-paddingbottom="[0,0,0,0]"
data-paddingleft="[0,0,0,0]"
style="z-index: 5;">
                <img src="assets/img/slide-dummy.png" alt="" data-lazyload="assets/img/shop/slider-mens-1.png" data-no-retina />
              </div>
            </li>
            <!-- SLIDE 2 -->
            <li class="slide overlay overlay-op-2" data-transition="fadethroughdark" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1500" data-thumb="assets/img/shop/beach.jpg" data-rotate="0" data-saveperformance="off" data-title="Summer" data-mediafilter="earlybird">
              <!-- MAIN IMAGE -->
              <img src="assets/img/shop/beach.jpg" alt="Background image" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg" data-no-retina />
              <!-- LAYERS -->
              <!-- SLIDE 1 Content-->
              <div class="slide-content container">
                <!--elements within .slide-content are pushed below navbar on "behind"-->
                <!-- Layer 1 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['140','140','140','140']" data-fontsize="['52','52','52','52']" data-lineheight="['52','52','52','52']" data-width="420" data-height="none" data-whitespace="normal" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1200,"to":"o:1;","delay":1300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="left">
                  <span class="font-weight-bold text-uppercase text-white">
                    Summers
                    <br />
                    On The Way
                  </span>
                </div>
                <!-- Layer 3 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['80','80','80','80']" data-fontsize="['20','20','20','30']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"delay":0,"speed":1200,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","delay":1400},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]' data-textAlign="['center','center','center','center']">Don't miss our 2017 beach wear collection
</div>
                <!-- Layer 3 -->
                <div class="tp-caption rs-parallaxlevel-8" data-frames='[{"from":"o:0;sX:3;sY:3;","speed":1500,"to":"o:0.10;sX:3;sY:3;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1200,"to":"x:[100%];","ease":"Power3.easeInOut"}]' data-x="left" data-y="bottom" data-hoffset="0" data-voffset="0" data-width="none" data-height="none" data-type="image" data-basealign="slide"> <i class="fa fa-bullseye icon-25x icon-bg op-1 text-white"></i>
</div>
                <!-- Layer 4 -->
                <div class="tp-caption tp-resizeme bg-primary-bright" data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="bottom" data-voffset="120" data-width="355" data-height="4" data-basealign="slide"></div>
              </div>
            </li>
            <li class="slide" data-transition="fadethroughdark" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1500" data-thumb="" data-rotate="0" data-saveperformance="off" data-mediafilter="rise" data-title="Eyewear">
              <img src="assets/img/slide-dummy.png" style='background-color:#a10f2b' data-lazyload="assets/img/transparent.png" alt="Background image" data-bgposition="center top" data-bgfit="cover" data-bgparallax="off" class="rev-slidebg" data-no-retina />
              <!-- SLIDE 1 Content-->
              <div class="slide-content container">
                <!--elements within .slide-content are pushed below navbar on "behind"-->
                <!-- Layer 1 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['140','140','140','140']" data-fontsize="['52','52','52','52']" data-lineheight="['52','52','52','52']" data-width="420" data-height="none" data-whitespace="normal" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1200,"to":"o:1;","delay":1300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="left"> <span class="font-weight-bold text-uppercase text-white">40% Off Eyewear</span>
</div>
                <!-- Layer 3 -->
                <div class="tp-caption text-grey" data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['80','80','80','80']" data-fontsize="['20','20','20','30']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-basealign="slide" data-responsive_offset="on" data-frames='[{"delay":0,"speed":1200,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","delay":1400},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]' data-textAlign="['center','center','center','center']"><a href="#" class="text-grey">Protect your eyes this spring & summer</a>
</div>
                <!-- Layer 3 -->
                <div class="tp-caption rs-parallaxlevel-8" data-frames='[{"from":"o:0;sX:3;sY:3;","speed":1500,"to":"o:0.20;sX:3;sY:3;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1200,"to":"x:[100%];","ease":"Power3.easeInOut"}]' data-x="left" data-y="bottom" data-hoffset="0" data-voffset="0" data-width="none" data-height="none" data-type="image" data-basealign="slide"> <i class="fa fa-bullseye icon-30x icon-bg op-1 text-white"></i>
</div>
                <!-- Layer 4 -->
                <div class="tp-caption tp-resizeme bg-primary-bright" data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"x:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]' data-x="['left','left','left','left']" data-hoffset="['0','0','0','40']" data-y="bottom" data-voffset="120" data-width="380" data-height="4" data-basealign="slide"></div>
              </div>
              <div class="tp-caption tp-resizeme rs-parallaxlevel-10" data-x="['right','right','right','right']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']" data-voffset="['0','0','0','0']" data-width="full-proportional"
data-height="full-proportional"
data-whitespace="nowrap"
data-type="image" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1800,"frame":"0","from":"opacity:0;x:120%;","to":"o:1;x:0;","ease":"Circ.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
data-textAlign="['inherit','inherit','inherit','inherit']"
data-paddingtop="[0,0,0,0]"
data-paddingright="[0,0,0,0]"
data-paddingbottom="[0,0,0,0]"
data-paddingleft="[0,0,0,0]"
style="z-index: 5;">
                <img src="assets/img/slide-dummy.png" alt="" data-lazyload="assets/img/shop/slider-womans-sunglasses.png" data-no-retina />
              </div>
            </li>
          </ul>
          <div class="tp-bannertimer tp-bottom"></div>
        </div>
        <!--end of tp-banner-->
      </div>
    </div>
    
    <!-- ======== @Region: #content ======== -->
    <div id="content" class="p-0">
      <!-- Promos -->
      <div class="container py-4 py-lg-6">
        <h5 class="mb-1 font-weight-normal">
          Promotions
        </h5>
        <div class="row text-center">
          <div class="col-lg-7 d-lg-flex">
            <div class="p-5 py-lg-6 overlay overlay-gradient overlay-op-5 rounded mb-4 mb-lg-0 flex-ew flex-valign" data-bg-img="assets/img/shop/promo-shoes.jpg" data-url="shop-product.html">
              <h2 class="text-white mb-0">
                50% Off All Shoes
              </h2>
              <p class="text-white mb-0">This week only up to 50% off all shoes of selected brands.</p>
              <hr class="hr-lg my-2 w-20 mx-auto hr-primary" />
            </div>
          </div>
          <div class="col-lg-5">
            <div class="p-5 overlay overlay-op-5 rounded mb-4 flex-valign" data-bg-img="assets/img/shop/promo-summer.jpg" data-css='{"background-position":"center bottom"}' data-url="shop-product.html">
              <h3 class="text-white mb-0">
                Summer 2017
              </h3>
              <p class="text-white mb-0">Check out our new summer arrivals</p>
              <hr class="hr-lg my-2 w-20 mx-auto hr-primary" />
            </div>
            <div class="p-5 overlay overlay-op-5 rounded flex-valign" data-bg-img="assets/img/shop/promo-truck.jpg" data-css='{"background-position":"center bottom"}' data-url="shop-product.html">
              <h3 class="text-white mb-0">
                Free Shipping
              </h3>
              <p class="text-white mb-0">Free shipping on all orders over $100</p>
              <hr class="hr-lg my-2 w-20 mx-auto hr-primary" />
            </div>
          </div>
        </div>
      </div>
      <!-- Featured Products -->
      <div id="features" class="container py-4 py-lg-6">
        <hr class="hr-lg mt-0 mb-3 w-10 mx-auto hr-primary" />
        <h2 class="text-center text-uppercase font-weight-bold my-0">
          Featured Products
        </h2>
        <h5 class="text-center font-weight-light mt-2 mb-0 text-muted">
          Great products, great value!
        </h5>
        <hr class="mb-5 w-50 mx-auto" />
        <!-- Products cards -->
        <div class="card-deck-wrapper">
          <div class="card-deck">
            <!-- Product 1 -->
            <div class="card product-card overlay-hover">
              <!-- Hover content -->
              <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                <a href="shop-cart.html" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                <a href="#" class="text-white">Add to Wishlist</a> 
              </div>
              <!-- Image & price content -->
              <div class="pos-relative">
                <img class="card-img-top img-fluid" src="assets/img/shop/shoes-2.jpg" alt="Card image cap">
                <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">
                  <del class="op-5">$24.99</del>
                  / $19.99
                </span>
              </div>
              <!-- Content -->
              <div class="card-body">
                <small class="text-muted text-uppercase"><span class="text-primary">Womens</span> / Shoes</small>
                <h4 class="card-title">
                  New Balance Shoes 
                </h4>
                <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i>
</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">15 in Stock</small>
              </div>
            </div>
            <!-- Product 2 -->
            <div class="card product-card overlay-hover">
              <!-- Hover content -->
              <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                <a href="shop-cart.html" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                <a href="#" class="text-white">Add to Wishlist</a> 
              </div>
              <!-- Ribbon -->
              <div class="card-ribbon card-ribbon-top card-ribbon-left bg-danger text-white">Low Stock</div>
              <!-- Image & price content -->
              <div class="pos-relative">
                <img class="card-img-top img-fluid" src="assets/img/shop/mens-sports-2.jpg" alt="Card image cap">
                <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">$39.99</span> 
              </div>
              <!-- Content -->
              <div class="card-body">
                <small class="text-muted text-uppercase"><span class="text-primary">Mens</span> / Sports</small>
                <h4 class="card-title">
                  Nike Training Top 
                </h4>
                <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star-o text-primary"></i> <i class="fa fa-star-o text-primary"></i>
</p>
              </div>
              <div class="card-footer">
                <small class="text-muted"><strong class="text-danger">4 in stock</strong></small>
              </div>
            </div>
            <!-- Product 3 -->
            <div class="card product-card overlay-hover">
              <!-- Hover content -->
              <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
                <a href="shop-cart.html" class="btn btn-primary btn-block text-uppercase font-weight-bold mb-3 btn-lg"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
                <a href="#" class="text-white">Add to Wishlist</a> 
              </div>
              <!-- Ribbon -->
              <div class="card-ribbon card-ribbon-top card-ribbon-left bg-primary text-white">Eco Friendly</div>
              <!-- Image & price content -->
              <div class="pos-relative">
                <img class="card-img-top img-fluid" src="assets/img/shop/promo-kids.jpg" alt="Card image cap">
                <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-r mt-2 mr-2 persist">$9.99</span> 
              </div>
              <!-- Content -->
              <div class="card-body">
                <small class="text-muted text-uppercase"><span class="text-primary">Kids</span> / Jumpers</small>
                <h4 class="card-title">
                  Kids Wolly Jumper 
                </h4>
                <p class="card-text"> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i> <i class="fa fa-star text-primary"></i>
</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">105 in Stock</small>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Call to action -->
      <div class="container" data-url="#">
        <hr class="hr-lg mt-0 mb-1 w-100 mx-auto hr-danger" />
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
        <hr class="hr-lg mt-1 w-100 mx-auto hr-danger" />
      </div>
      <!-- Collections -->
      <div class="container py-4 py-lg-6 text-center">
        <hr class="hr-lg mt-0 mb-3 w-10 mx-auto hr-primary" />
        <h2 class="text-center text-uppercase font-weight-bold my-0">
          Product Collections
        </h2>
        <h5 class="text-center font-weight-light mt-2 mb-0 text-muted">
          Something for everyone
        </h5>
        <hr class="mb-5 w-50 mx-auto" />
        <div class="row">
          <div class="col-lg-4 d-flex">
            <div class="p-5 py-lg-6 overlay overlay-op-5 rounded flex-ew mb-3 mb-lg-0 flex-valign" data-bg-img="assets/img/shop/promo-mens.jpg" data-url="shop-product.html">
              <hr class="w-50 mx-auto hr-primary" />
              <h2 class="text-white text-uppercase mb-0">
                Mens
              </h2>
              <hr class="w-50 mx-auto hr-primary" />
            </div>
          </div>
          <div class="col-lg-4 d-flex">
            <div class="p-5 overlay overlay-op-5 rounded flex-ew mb-3 mb-lg-0 flex-valign" data-bg-img="assets/img/shop/promo-summer.jpg" data-css='{"background-position":"center bottom"}' data-url="shop-product.html">
              <hr class="w-50 mx-auto hr-primary" />
              <h2 class="text-white text-uppercase mb-0">
                Womens
              </h2>
              <hr class="w-50 mx-auto hr-primary" />
            </div>
          </div>
          <div class="col-lg-4 d-flex">
            <div class="p-5 overlay overlay-op-4 rounded flex-ew mb-3 mb-lg-0 flex-valign" data-bg-img="assets/img/shop/promo-kids.jpg" data-css='{"background-position":"center bottom"}' data-url="shop-product.html">
              <hr class="w-50 mx-auto hr-primary" />
              <h2 class="text-white text-uppercase mb-0">
                Childrens
              </h2>
              <hr class="w-50 mx-auto hr-primary" />
            </div>
          </div>
        </div>
      </div>
      <!-- Feature Blocks -->
      <div class="bg-dark">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-5 divider-diagonal divider-diagonal-r divider-dark" data-bg-img="assets/img/shop/jacket-2.jpg"></div>
            <div class="col-lg-4 py-6">
              <hr class="hr-lg mt-0 mb-2 w-10 ml-0 hr-primary" />
              <h2 class="display-4 text-slab text-white text-uppercase mt-0 mb-5">
                Fashion <span class="text-primary font-weight-bold">Focus</span>
              </h2>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-primary icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11 text-grey">
                  <h4 class="font-weight-bold text-white text-uppercase">
                    Abigo Appellatio Os Vero
                  </h4>
                  <p>Amet obruo olim valetudo vulputate. Aptent gilvus ideo lenis nobis plaga utinam. Blandit jumentum minim plaga turpis. Acsi inhibeo refoveo voco.</p>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-primary icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11 text-grey">
                  <h4 class="font-weight-bold text-white text-uppercase">
                    Importunus Pala Premo Virtus
                  </h4>
                  <p>Caecus gilvus lucidus melior nulla. Abdo adipiscing eros obruo plaga quidem similis turpis vicis voco. Causa facilisis gilvus nimis tincidunt vero.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Latest trends block -->
      <div class="bg-light">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-4 offset-lg-2 py-6">
              <hr class="hr-lg mt-0 mb-2 w-10 ml-0 hr-primary" />
              <h2 class="display-4 text-slab text-grey-dark text-uppercase mt-0 mb-5">
                Latest <span class="text-primary font-weight-bold">Trends</span>
              </h2>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-primary icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11">
                  <h4 class="font-weight-bold text-uppercase">
                    Capto Magna Torqueo Turpis
                  </h4>
                  <p>Abbas gilvus persto populus utrum. Exputo jus laoreet melior neque praemitto qui scisco. Camur dignissim gemino in pala patria sagaciter sed.</p>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-primary icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11">
                  <h4 class="font-weight-bold text-uppercase">
                    Eros Eum Qui Valde
                  </h4>
                  <p>Humo laoreet usitas uxor. At nostrud os vereor. Aliquip hos laoreet lenis nimis saluto si. Letalis pertineo quidne quis virtus.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6 divider-diagonal divider-light" data-bg-img="assets/img/shop/promo-kids.jpg"></div>
          </div>
        </div>
      </div>
      <!-- Beach 2017 -->
      <div class="bg-primary">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-5 divider-diagonal divider-diagonal-r divider-primary op-9" data-bg-img="assets/img/shop/promo-bikini.jpg"></div>
            <div class="col-lg-4 py-6">
              <hr class="hr-lg mt-0 mb-2 w-10 ml-0 hr-white" />
              <h2 class="display-4 text-slab text-grey text-uppercase mt-0 mb-5">
                Beach <span class="text-white font-weight-bold">2018</span>
              </h2>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-white icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11 text-grey">
                  <h4 class="font-weight-bold text-white text-uppercase">
                    Camur Cui Incassum Voco
                  </h4>
                  <p>Accumsan capto gravis. Antehabeo caecus distineo erat incassum pecus refero wisi. Commodo consectetuer dolus esca haero sudo tation tum valetudo.</p>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-2 col-md-1 text-center"> <i class="fa fa-check text-white icon-2x op-8"></i>
</div>
                <div class="col-10 col-md-11 text-grey">
                  <h4 class="font-weight-bold text-white text-uppercase">
                    Capto Decet Facilisi Quia
                  </h4>
                  <p>Iusto laoreet olim. Abigo antehabeo magna praemitto quia quis singularis. Antehabeo conventio hendrerit ille mauris quibus sino valde vereor. Comis conventio dolore euismod nulla obruo oppeto ratis vindico vulputate.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- New Products -->
      <div class="container py-4 py-lg-6">
        <hr class="hr-lg mt-0 mb-3 w-10 mx-auto hr-primary" />
        <h2 class="text-center text-uppercase font-weight-bold my-0">
          New Arrivals
        </h2>
        <hr class="mb-5 w-50 mx-auto" />
        <div class="mt-4 owl-nav-over owl-nav-over-lg" data-toggle="owl-carousel" data-owl-carousel-settings='{"responsive":{"0":{"items":1}, "600":{"items":2}, "980":{"items":4}}, "margin":10, "nav":true, "dots":false}'>
          <!-- Product 1 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                New Balance
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-2"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/shoes-2.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">
                <del class="op-5">$24.99</del>
                / $19.99
              </span>
            </div>
          </div>
          <!-- Product 2 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                Nike Training Top
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-3"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/mens-sports-2.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">$39.99</span> 
            </div>
          </div>
          <!-- Product 3 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                Kids Wollys
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-3"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/promo-kids.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">$9.99</span> 
            </div>
          </div>
          <!-- Product 4 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                Kids Hoodies
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-3"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Ribbon -->
            <div class="card-ribbon card-ribbon-top card-ribbon-right bg-primary text-white">Eco Friendly</div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/promo-kids-hoodies.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">$29.99</span> 
            </div>
          </div>
          <!-- Product 5 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                Shirts
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-3"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/promo-mens.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">$69.99</span> 
            </div>
          </div>
          <!-- Product 6 -->
          <div class="card product-card overlay-hover">
            <!-- Hover content -->
            <div class="overlay-hover-content overlay-op-7 product-card-hover-tools">
              <h4 class="text-white">
                Jacket
              </h4>
              <a href="shop-cart.html" class="btn btn-primary text-uppercase font-weight-bold mb-3"><i class="fa fa-cart-plus mr-2"></i> Add to Cart</a>
            </div>
            <!-- Image & price content -->
            <div class="pos-relative">
              <img class="card-img-top img-fluid" src="assets/img/shop/promo-mens-2.jpg" alt="Card image cap">
              <span class="badge badge-primary product-price-badge pos-absolute pos-t pos-l mt-2 ml-2">$199.99</span> 
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- ======== @Region: #content-below ======== -->
    <div id="content-below">
      <!-- Awesome features call to action -->
      <div class="bg-primary text-white">
        <div class="container py-3 pos-relative">
          <div class="row">
            <div class="col-lg-7 text-center text-lg-left">
              <i class="fa fa-envelope-o icon-4x op-4 float-left mr-3 d-none d-xl-block"></i> 
              <h2 class="text-uppercase font-weight-bold mt-2 mb-1 text-slab">
                Get Deals & Discounts
              </h2>
              <h5 class="text-faded">
                Direct to your inbox with our newsletter
              </h5>
            </div>
            <div class="col-lg-5 text-center text-lg-right flex-valign">
              <form>
                <div class="input-group input-group-rounded">
                  <input type="text" class="form-control" id="email-field" placeholder="Email">
                  <span class="input-group-append">
                    <button class="btn btn-primary btn-invert" type="button">Sign Up</button>
                  </span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- ======== @Region: #footer ======== -->
    <footer id="footer">
      <div class="container">
        <div class="row">
          
          <div class="col-lg-4">
            <h3 class="text-white text-uppercase text-slab font-weight-bold">
              App<span class="text-primary">Strap</span>
            </h3>
            <p class="text-sm">Making the web a prettier place one template at a time! We make beautiful, quality, responsive Drupal & web templates!</p>
            <address>
              <ul class="list-unstyled text-sm">
                <li>
                  <abbr title="Phone"><i class="fa fa-phone fa-fw text-white"></i></abbr>
                  (+44) 7283643345
                </li>
                <li>
                  <abbr title="Email"><i class="fa fa-envelope fa-fw text-white"></i></abbr>
                  info@appstraptheme.com
                </li>
                <li>
                  <abbr title="Address"><i class="fa fa-home fa-fw text-white"></i></abbr>
                  Sunshine House, Sunville. SUN12 8LU.
                </li>
              </ul>
            </address>
            <!--social media icons-->
            <div class="mt-3 mb-4 mb-lg-0">
              <!--@todo: replace with company social media details-->
              <a href="#" class="btn btn-icon btn-dark btn-rounded btn-flat"> <i class="fab fa-twitter"></i> <span class="sr-only">Fa twitter</span> </a>
              <a href="#" class="btn btn-icon btn-dark btn-rounded btn-flat"> <i class="fab fa-facebook-f"></i> <span class="sr-only">Fa facebook f</span> </a>
              <a href="#" class="btn btn-icon btn-dark btn-rounded btn-flat"> <i class="fab fa-linkedin-in"></i> <span class="sr-only">Fa linkedin in</span> </a>
              <a href="#" class="btn btn-icon btn-dark btn-rounded btn-flat"> <i class="fab fa-google-plus-g"></i> <span class="sr-only">Fa google plus g</span> </a>
            </div>
          </div>
          
          <div class="col-lg-7 offset-lg-1">
            <div class="row">
              <div class="col-6 col-md-3">
                <h4 class="mt-0 text-slab">
                  Mens
                </h4>
                <ul class="list-unstyled footer-links">
                  <li><a href="#">Shoes</a></li>
                  <li><a href="#">Shirts</a></li>
                  <li><a href="#">Trousers</a></li>
                  <li><a href="#">Suits</a></li>
                  <li><a href="#">Jackets</a></li>
                  <li><a href="#">Sportswear</a></li>
                  <li><a href="#">Shorts</a></li>
                  <li><a href="#">Swimwear</a></li>
                  <li><a href="#">T-shirts</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h4 class="mt-0 text-slab">
                  Womens
                </h4>
                <ul class="list-unstyled footer-links">
                  <li><a href="#">Dresses</a></li>
                  <li><a href="#">Jeans</a></li>
                  <li><a href="#">Skirts</a></li>
                  <li><a href="#">Suits</a></li>
                  <li><a href="#">Jackets</a></li>
                  <li><a href="#">Sportswear</a></li>
                  <li><a href="#">Shorts</a></li>
                  <li><a href="#">Swimwear</a></li>
                  <li><a href="#">T-shirts</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h4 class="mt-0 text-slab">
                  Childrens
                </h4>
                <ul class="list-unstyled footer-links">
                  <li><a href="#">Shoes</a></li>
                  <li><a href="#">Sports Wear</a></li>
                  <li><a href="#">School Clothes</a></li>
                  <li><a href="#">Trousers</a></li>
                  <li><a href="#">Suits</a></li>
                  <li><a href="#">Jackets</a></li>
                  <li><a href="#">Sportswear</a></li>
                  <li><a href="#">Swimwear</a></li>
                  <li><a href="#">T-shirts</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-3">
                <h4 class="mt-0 text-slab">
                  Baby
                </h4>
                <ul class="list-unstyled footer-links">
                  <li><a href="#">Newborn</a></li>
                  <li><a href="#">Toddler</a></li>
                  <li><a href="#">Preschool</a></li>
                  <li><a href="#">Winter Suits</a></li>
                  <li><a href="#">Jackets</a></li>
                  <li><a href="#">Sportswear</a></li>
                  <li><a href="#">Swimwear</a></li>
                  <li><a href="#">T-shirts</a></li>
                  <li><a href="#">Trousers</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        
        <hr class="my-4 hr-white op-1" />
        <!--@todo: replace with company copyright details-->
        <div class="subfooter text-sm text-center">
          <p>Site template by <a href="appstraptheme.com" class="footer-link">AppStrap</a> | Copyright 2018 &copy; AppStrap</p>
          <ul class="list-inline footer-links">
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Contact Us</a></li>
          </ul>
        </div>
      </div>
      <a href="#top" class="btn btn-icon btn-dark pos-fixed pos-b pos-r mr-3 mb-3 scroll-state-hidden" title="Back to top" data-scroll="scroll-state"><i class="fa fa-chevron-up"></i></a>
    </footer>
    
    <!-- Style switcher - demo only - @todo: remove in production -->
    <div class="colour-switcher">
      <a href="#" class="colour-switcher-toggle" data-toggle="class" data-target=".colour-switcher"> <i class="fa fa-paint-brush"></i> </a>
      <h5 class="text-uppercase my-0">
        Theme Colours
      </h5>
      <hr />
      <div class="theme-colours"> <a href="#green" class="green active" data-toggle="tooltip" data-placement="right" data-original-title="Green (Default)">Green</a> <a href="#red" class="red" data-toggle="tooltip" data-placement="right" data-original-title="Red">Red</a> <a href="#blue" class="blue" data-toggle="tooltip" data-placement="right" data-original-title="Blue">Blue</a> <a href="#purple" class="purple" data-toggle="tooltip" data-placement="right" data-original-title="Purple">Purple</a> <a href="#pink" class="pink" data-toggle="tooltip" data-placement="right" data-original-title="Pink">Pink</a> <a href="#orange" class="orange" data-toggle="tooltip" data-placement="right" data-original-title="Orange">Orange</a> <a href="#lime" class="lime" data-toggle="tooltip" data-placement="right" data-original-title="Lime">Lime</a> <a href="#blue-dark" class="blue-dark" data-toggle="tooltip" data-placement="right" data-original-title="Blue-dark">Blue-dark</a> <a href="#red-dark" class="red-dark" data-toggle="tooltip" data-placement="right" data-original-title="Red-dark">Red-dark</a> <a href="#brown" class="brown" data-toggle="tooltip" data-placement="right" data-original-title="Brown">Brown</a> <a href="#cyan-dark" class="cyan-dark" data-toggle="tooltip" data-placement="right" data-original-title="Cyan-dark">Cyan-dark</a> <a href="#yellow" class="yellow" data-toggle="tooltip" data-placement="right" data-original-title="Yellow">Yellow</a> <a href="#slate" class="slate" data-toggle="tooltip" data-placement="right" data-original-title="Slate">Slate</a> <a href="#olive" class="olive" data-toggle="tooltip" data-placement="right" data-original-title="Olive">Olive</a> <a href="#teal" class="teal" data-toggle="tooltip" data-placement="right" data-original-title="Teal">Teal</a> <a href="#green-bright" class="green-bright" data-toggle="tooltip" data-placement="right" data-original-title="Green-bright">Green-bright</a> </div>
      <hr />
      <p class="text-xs text-muted">Cookies are NOT enabled so colour selection is not persistent.</p>
      <p class="text-xs my-0"><a href="index.html">Back to main homepage</a></p>
      <p class="text-xs my-0"><a href="intro.html">Back to intro page</a></p>
    </div>
    <!--Hidden elements - excluded from jPanel Menu on mobile-->
    <div class="hidden-elements js-off-canvas-exclude">
      <!--@modal - signup modal-->
      <div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
          <form action="signup.html">
            <div class="modal-content">
              <div class="modal-header bg-light">
                <h4 class="modal-title">
                  Sign Up
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <h6 class="op-8">
                    Price Plan
                  </h6>
                  <select class="form-control">
                    <option>Basic</option>
                    <option>Pro</option>
                    <option>Pro +</option>
                  </select>
                </div>
                <hr />
                
                <h6 class="op-8">
                  Account Information
                </h6>
                <div class="form-group">
                  <label class="sr-only" for="signup-first-name">First Name</label>
                  <input type="text" class="form-control" id="signup-first-name" placeholder="First name">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="signup-last-name">Last Name</label>
                  <input type="text" class="form-control" id="signup-last-name" placeholder="Last name">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="signup-username">Userame</label>
                  <input type="text" class="form-control" id="signup-username" placeholder="Username">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="signup-email">Email address</label>
                  <input type="email" class="form-control" id="signup-email" placeholder="Email address">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="signup-password">Password</label>
                  <input type="password" class="form-control" id="signup-password" placeholder="Password">
                </div>
                <div class="form-check text-xs">
                  <label class="form-check-label op-8">
                    <input type="checkbox" value="term" class="form-check-input mt-1">
                    I agree with the Terms and Conditions. 
                  </label>
                </div>
              </div>
              <div class="modal-footer bg-light py-3">
                <div class="d-flex align-items-center">
                  <button type="button" class="btn btn-primary">Sign Up</button>
                  <button type="button" class="btn btn-link ml-1" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>
                <p class="text-xs text-right text-lh-tight op-8 my-0 ml-auto">Already signed up? <a href="login.html">Login here</a></p>
              </div>
            </div>
            <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      <!--@modal - login modal-->
      <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <form action="login.html">
              <div class="modal-header bg-light">
                <h4 class="modal-title">
                  Login
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label class="sr-only" for="login-email">Email</label>
                  <input type="email" id="login-email" class="form-control email" placeholder="Email">
                </div>
                <div class="form-group mb-0">
                  <label class="sr-only" for="login-password">Password</label>
                  <input type="password" id="login-password" class="form-control password mb-1" placeholder="Password">
                </div>
              </div>
              <div class="modal-footer bg-light py-3">
                <div class="d-flex align-items-center">
                  <button type="button" class="btn btn-primary">Login</button>
                  <button type="button" class="btn btn-link ml-1" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>
                <p class="text-xs text-right text-lh-tight op-8 my-0 ml-auto">
                  Not a member? <a href="#" class="signup">Sign up now!</a>
                  <br />
                  <a href="#">Forgotten password?</a>
                </p>
              </div>
            </div>
            <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
    </div>
  </body>
     <jsp:include page="Footer.jsp"></jsp:include>
</html>