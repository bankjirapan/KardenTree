<%-- 
    Document   : LoginView
    Created on : Nov 1, 2018, 4:12:01 PM
    Author     : ryan.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=Customer Login"></jsp:include>
    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a> 

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>



        <div id="content">
            <div class="container">
                <!-- Login form -->
                <form action="Login" method="post" class="form-login form-wrapper form-narrow">
                    <h3 class="title-divider">
                        <span>Login</span> 
                        <small class="mt-4">Not signed up? <a href="Register">Sign up here</a>.</small>
                    </h3>
                    <div class="form-group">
                        <label class="sr-only" for="login-email-page">Email</label>
                        <input type="text" name="email" id="login-email-page" class="form-control email" placeholder="Username or Email">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="login-password-page">Password</label>
                        <input type="password" name="password" id="login-password-page" class="form-control password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                    | 
                    <small><a href="#">Forgotten Password?</a></small>
                </form>
            </div>
        </div>
        <div id="content-below">
            <!-- Awesome features call to action -->
            <div class="bg-primary bg-op-9 text-white py-4">
                <div class="container">
                    <div class="row text-center text-lg-left align-items-lg-center">
                        <div class="col-12 col-lg-7 text-white">
                            <h3 class="font-weight-bold my-0 text-uppercase">
                                Awesome Features
                            </h3>
                            <p class="font-weight-normal op-9 my-0"> <i class="ion-android-checkmark-circle"></i> 99.9% Uptime <i class="ion-android-checkmark-circle ml-lg-3"></i> Free Upgrades <i class="ion-android-checkmark-circle ml-lg-3"></i> Fully Responsive <i class="ion-android-checkmark-circle ml-lg-3"></i> Bug Free </p>
                        </div>
                        <div class="col-12 col-lg-5 py-2 text-lg-right">
                            <a href="https://wrapbootstrap.com/theme/appstrap-responsive-website-template-WB0C6D0H4?ref=tme" class="btn btn-xlg btn-white btn-rounded shadow-lg bg-light bg-op-8 bg-hover-white">Get AppStrap<i class="fa fa-arrow-right ml-2 mt-1"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
    

<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>
