<%-- 
    Document   : profileView
    Created on : Nov 26, 2018, 9:47:56 PM
    Author     : llujo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="Layout/Header.jsp?titleName=Profile"></jsp:include>


    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

        <!-- @plugin: page loading indicator, delete to remove loader -->
        <div class="page-loader" data-toggle="page-loader"></div>


        <a id="#top" href="#content" class="sr-only">Skip to content</a>

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>


        <div id="content">
            <div class="container">

                <div id="page-header">
                    <div class="container clearfix">
                        <h3 class="mb-0 float-md-left">
                            User Profile
                        </h3>
                        <!-- Page header breadcrumb -->

                    </div>
                </div>

                <br>




                <div class="row">
                    <div class="col-sm-3"><!--left col-->


                        <div class="text-center">
                            <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                            <h6>Upload a different photo...</h6>
                            <input type="file" class="text-center center-block file-upload">
                        </div><br>



                        <ul class="list-group">
                            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
                        </ul> 


                    </div><!--/col-3-->
                    <div class="col-sm-9">


                        <div class="card">
                            <div class="card-header">
                                <ul class="nav nav-tabs card-header-tabs">
                                    <li class="nav-item"> <a class="nav-link active show" href="#profile" data-toggle="tab">Infomations</a> </li>
                                    <li class="nav-item"> <a class="nav-link" href="#Address" data-toggle="tab">Address</a> </li>
                                    <li class="nav-item"> <a class="nav-link" href="#ChangPassword" data-toggle="tab">Changes Password</a> </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="tab-pane active show" id="profile" role="tabpanel">
                                        <h4 class="card-title">
                                            Tab 1
                                        </h4>
                                        <table class="table table-user-information">
                                            <tbody>
                                                <tr>
                                                    <td>ชื่อนามสกุล</td>
                                                    <td>${infoCustomer.fname} ${infoCustomer.lname}</td>
                                            </tr>
                                            <tr>
                                                <td>ชื่อผู้ใช้งาน</td>

                                                <td>${infoCustomer.username}</td>
                                            </tr>
                                            <tr>
                                                <td>อีเมล</td>
                                                <td>${infoCustomer.email}</td>
                                            </tr>

                                            <tr>
                                                <td>โทรศัพท์</td>
                                                <td>${infoCustomer.telno}</td>
                                            </tr>
                                            <tr>
                                                <td>สถานะบัญชี</td>
                                                <td>${infoCustomer.activated}</td>
                                            </tr>
                                            <tr>
                                                <td>วันที่สมัคร</td>
                                                <td>${infoCustomer.updateDate}</td>
                                            </tr>
                                        <td>ที่อยู่จัดส่ง</td>
                                        <c:if test="${CustomerAddress != null}">

                                            <td>
                                            <c:forEach items="${CustomerAddress}" var="addressCustomer">
                                                ${addressCustomer.address}
                                                <br>
                                            </c:forEach>

                                            </td>
                                        </c:if>
                                        <c:if test="${CustomerAddress == null}">

                                            <td>
                                                ไม่มีที่อยู่
                                            </td>
                                        </c:if>



                                        </tr>

                                        </tbody>
                                    </table>



                                </div>
                                <div class="tab-pane" id="Address" role="tabpanel">
                                    <h4 class="card-title">
                                        Tab 2
                                    </h4>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a> 
                                </div>
                                <div class="tab-pane" id="ChangPassword" role="tabpanel">
                                    <h4 class="card-title">
                                        Tab 3
                                    </h4>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a> 
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>


</body>

<jsp:include page="Layout/Footer.jsp"></jsp:include>

</html>

