<%-- 
    Document   : adminCustomer
    Created on : Oct 28, 2018, 11:23:50 AM
    Author     : bankcom
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="adminHeader.jsp?titleName=KardenTree Customer"></jsp:include>
    <!-- Page level plugin CSS-->
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

    <script>

        $(document).ready(function () {
            $('#ProductListAll').DataTable({
                responsive: true
            });
        });

    </script>

    <body id="page-top">

    <jsp:include page="adminNavbar.jsp"></jsp:include>



        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Dashboard">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item dropdown active">
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
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item active" href="ProductList">ดูสินค้าทั้งหมด</a>
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
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">จัดการสินค้า</li>
                        <li class="breadcrumb-item active">ดูสินค้าทั้งหมด</li>
                    </ol>

                    <!-- DataTables Example -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            สินค้าทั้งหมด</div>
                        <div class="card-body">
                            <div class="table-responsive">

                                <table id="ProductListAll" class="table table-bordered dataTable" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Product ID</th>
                                            <th>Product Name</th>
                                            <th>Category</th>
                                            <th>Type</th>
                                            <th>Price</th>
                                            <th>Pic</th>
                                            <th>Manages</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <c:forEach items="${ProductAll}" var="productShowAll">
                                        <tr>
                                            <td>${productShowAll.productid}</td>
                                            <td>${productShowAll.productname}</td>
                                            <td>${productShowAll.category}</td>
                                            <td>${productShowAll.type}</td>
                                            <td>${productShowAll.price}</td>
                                            <td><img src="${URL}/${productShowAll.picture}" width="100px" height="100px"></img></td>
                                            <td>
                                                <div class="rows">

                                                    <a class="btn btn-info btn-sm" href="ProductList?view=${productShowAll.productid}"><i class="fa fa-eye"></i></a>


                                                    <a class="btn btn-warning btn-sm" href="ProductList?edit=${productShowAll.productid}"><i class="fa fa-edit"></i></a>

                                                    <a class="btn btn-danger btn-sm" onclick="" href="ProductList?delete=${productShowAll.productid}"><i class="fa fa-trash"></i></a>

                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>

                            </table>




                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>

                <p class="small text-center text-muted my-5">
                    <em>More table examples coming soon...</em>
                </p>

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

        <jsp:include page="adminFooter.jsp"></jsp:include>
</body>
</html>