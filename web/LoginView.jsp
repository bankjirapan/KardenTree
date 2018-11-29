<%-- 
    Document   : LoginView
    Created on : Nov 1, 2018, 4:12:01 PM
    Author     : ryan.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=Customer Login"></jsp:include>
    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">



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
                    <small><a href="Forget">Forgotten Password?</a></small>
                </form>
            </div>
        </div>




    <jsp:include page="Layout/Footer.jsp"></jsp:include>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    ${msg == "Invalid" ? '<script>swal("มีปัญหา", "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง","warning");</script>' : ''}
</html>
