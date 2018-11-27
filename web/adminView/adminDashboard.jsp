<%-- 
    Document   : adminDashboard
    Created on : Oct 25, 2018, 5:42:14 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="adminHeader.jsp?titleName=KardenTree ControlPanel"></jsp:include>

    <body id="page-top">

    <jsp:include page="adminNavbar.jsp"></jsp:include>



        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Dashboard">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>จัดการสินค้า</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Login Screens:</h6>
                        <a class="dropdown-item" href="AddProduct">เพิ่มสินค้าใหม่</a>
                        <a class="dropdown-item" href="">จัดการประเภทสินค้า</a>
                        <a class="dropdown-item" href="">สินค้าโปรโมชั่น</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="ProductList">ดูสินค้าทั้งหมด</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>สถิติการขาย</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Customer">
                        <i class="fas fa-fw fa-table"></i>
                        <span>ลูกค้าทั้งหมด</span></a>
                </li>
<!--                <li class="nav-item">
                    <a class="nav-link" href="">
                        <i class="fas fa-cog"></i>
                        <span>การตั้งค่า</span></a>
                </li>-->
                <li class="nav-item">
                    <a  href="admin/logout" data-toggle="modal" data-target="#logoutModal" class="nav-link" href="">
                        <i class="fas fa-sign-out-alt"></i>
                        <span>ออกจากระบบ</span></a>
                </li>
            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Login</a>
                        </li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>

                    <!-- Page Content -->


                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-primary o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-comments"></i>
                                    </div>
                                    <div class="mr-5">${ numCustomer } จำนวนลูกค้า</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="Customer">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-warning o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fas fa-fw fa-list"></i>
                                </div>
                                <div class="mr-5">11 ชิ้น/สินค้าทั้งหมด</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-success o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fas fa-fw fa-shopping-cart"></i>
                                </div>
                                <div class="mr-5">123 New Orders!</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-danger o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fas fa-fw fa-life-ring"></i>
                                </div>
                                <div class="mr-5">13 New Tickets!</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fas fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-chart-area"></i>
                        แยกประเภทสินค้า</div>
                    <div class="card-body"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                        <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>




            </div>
            <!-- /.container-fluid -->

            <!-- Sticky Footer -->
            <footer class="sticky-footer">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Your Website 2018</span>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger" href="logout">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>


    <script>
        Highcharts.chart('container', {
        chart: {
        plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
        },
                title: {
                text: 'สินค้าในคลังขอบคุณ'
                },
                tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                pie: {
                allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                        enabled: true,
                                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                }
                        }
                }
                },
                series: [{
                name: 'Brands',
                        colorByPoint: true,
                        data: [
        <c:forEach items="${Product}" var="p">
                        {
                        name: '${p.productname}',
                                y: ${p.quantity}
                        },
        </c:forEach>
                       
                        ]
                }]
        });
    </script>

    <jsp:include page="adminFooter.jsp"></jsp:include>
</body>
</html>
