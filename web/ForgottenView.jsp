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
                <form action="Forgot" method="post" class="form-login form-wrapper form-narrow">
                    <input type="text" value="${accountid}" hidden="" name="customerid">
                    <h3 class="title-divider">
                        <span>Forgotten Password</span> 
                        <small class="mt-4">Please type your new here.</small>
                    </h3>
                    <div class="form-group">
                        <label class="sr-only" for="login-password-page">New Password</label>
                        <input type="text" name="keyagain" value="${sessionScope.key}" hidden>
                        <input type="password"  name="newpassword" id="login-password-page" class="form-control password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="login-password-page">Confirm Password</label>
                        <input type="password" name="confirmpassword" id="login-password-page" class="form-control password" placeholder="Password">
                    </div>
                    <div>
                        <input type="submit">
                    </div>
                    
                    
                    
                </form>
            </div>
        </div>

  
    

<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>
