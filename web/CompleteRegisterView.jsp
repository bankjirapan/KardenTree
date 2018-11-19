<%-- 
    Document   : CompleteRegisterView
    Created on : Nov 11, 2018, 9:45:45 PM
    Author     : ryan.
--%>

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
                    Thank you for Register
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="Register">Register</a> <span class="breadcrumb-item active">Complate for Register</span> </nav>
            </div>
        </div>

        <div id="content" class="py-5">
            <div class="container">
                <div class="text-center mb-6">
                    <i class="fa fa-check-circle icon-6x text-success"></i> 
                    <h3>
                        Your Account register successfuly , Thank
                    </h3>
                    <h4 class="font-weight-normal">
                        KardenTree call center : 092-9839-1123 
                    </h4>
                    <p id="countdownReDirect"></p>
                </div>
            </div>
        </div>
    </body>

<jsp:include page="Layout/Footer.jsp"></jsp:include>

<script>

    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);


            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent =  "Plase wait : " + seconds + " Redirect to Login";
            
            
            if(seconds == "00"){
                window.location = "Login";
            }
         

            if (--timer < 0) {
                timer = duration;
            }
        }, 1000);
    }

    window.onload = function () {
        var fiveMinutes = 5,
                display = document.querySelector('#countdownReDirect');
        startTimer(fiveMinutes, display);
    };

</script>
</html>

