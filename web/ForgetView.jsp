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
                <form action="Forget" method="post" class="form-login form-wrapper form-narrow">
                    <h3 class="title-divider">
                        <span>Forgotten Password</span> 
                        <small class="mt-4">Please type your email here.</small>
                    </h3>
                    <div class="form-group">
                        <label class="sr-only" for="login-email-page">Email</label>
                        <input type="text" name="email" id="login-email-page" class="form-control email" placeholder="Email">
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Submit</button>
                    
                </form>
            </div>
        </div>

  
    

<jsp:include page="Layout/Footer.jsp"></jsp:include>
</html>
