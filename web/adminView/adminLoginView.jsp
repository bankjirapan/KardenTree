<%-- 
    Document   : adminLoginView
    Created on : Oct 21, 2018, 9:56:18 PM
    Author     : bankcom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Moz Bank Ryan P,Yo">
        <title>Kardentree Login</title>


        <!-- Bootstrap core CSS-->
        <link href="assets/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="assets/admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="assets/admin/css/sb-admin.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Mitr" rel="stylesheet">

        <style>

            body{
                font-family: 'Mitr', sans-serif;
            }

        </style>
    </head>
    <body class="bg-dark">

        <div class="container">
            <div class="card card-login mx-auto mt-5">
                <div align="center" class="card-header">KardenTree</div>
                <div class="card-body">
                    <form action="admin" method="post">
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="text" id="inputEmail" name="InUsername" class="form-control" placeholder="UserName" required="required" autofocus="autofocus">
                                <label for="inputEmail">UserName</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="password" id="inputPassword" name="InPassword"class="form-control" placeholder="Password" required="required">
                                <label for="inputPassword">Password</label>
                            </div>
                        </div>
<!--                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me">
                                    Remember Password
                                </label>
                            </div>
                        </div>-->
                        <input class="btn btn-primary btn-block" type="submit" value="Login">
                    </form>
<!--                    <div class="text-center">
                        <a class="d-block small" href="#">Forgot Password?</a>
                    </div>-->
                </div>
            </div>
        </div>







    </c:if>
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
${msg == "Invalid" ? '<script>swal("มีปัญหา", "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง","warning");</script>' : ''}

</body>
</html>
