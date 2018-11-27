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


    </body>
    <div class="container">
        <div class="row" style="margin: 50px">
            <div class="col-md-4">
                <div class="card bg-shadow text-center border-0">
                    <h4 class="card-title py-3 my-0 text-shadow op-8">
                        Phone
                    </h4>
                    <p class="price-banner bg-light shadow-sm card-body-overlap"> <span class="price-digits"><img src="http://localhost:8080/KradenTree/assets/img/slides/phone-call.png" width="50%" align="center"/></span></p>
                    <div class="card-body">

                        <a href="tel://0123456789" class="btn btn-primary btn-rounded btn-lg">012 345 6789</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-shadow text-center border-0">
                    <h4 class="card-title py-3 my-0 text-shadow op-8">
                        Email
                    </h4>
                    <p class="price-banner bg-light shadow-sm card-body-overlap"> <span class="price-digits"><img src="http://localhost:8080/KradenTree/assets/img/slides/email.png" width="50%" align="center"/></span></p>
                    <div class="card-body">

                        <a href="mailto:info@kradentree.com" class="btn btn-primary btn-rounded btn-lg">info@kradentree.com</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-shadow text-center border-0">
                    <h4 class="card-title py-3 my-0 text-shadow op-8">
                        Location
                    </h4>
                    <p class="price-banner bg-light shadow-sm card-body-overlap"> <span class="price-digits"><img src="http://localhost:8080/KradenTree/assets/img/slides/placeholder.png" width="50%" align="center"/></span></p>
                    <div class="card-body">

                        <a href="https://goo.gl/maps/jYGZTuQZCfw" target="_blank" class="btn btn-primary btn-rounded btn-lg">Bangmod</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="Layout/Footer.jsp"></jsp:include>

</html>