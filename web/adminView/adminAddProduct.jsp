<%-- 
    Document   : adminAddProduct
    Created on : Nov 11, 2018, 8:48:28 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="adminHeader.jsp?titleName=KardenTree AddProduct"></jsp:include>

    <style>

        .btn-file {
            position: relative;
            overflow: hidden;
        }
        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 100%;
            min-height: 100%;
            font-size: 100px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            outline: none;
            background: white;
            cursor: inherit;
            display: block;
        }

        #img-upload{
            width: 100%;
        }

    </style>
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
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="ProductList">ดูสินค้าทั้งหมด</a>
                        <a class="dropdown-item" href="">Blank Page</a>
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
                    <a class="nav-link" href="">
                        <i class="fas fa-cog"></i>
                        <span>การตั้งค่า</span></a>
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
                            <a href="#">Login</a>
                        </li>
                        <li class="breadcrumb-item active">เพิ่มสินค้า</li>
                    </ol>

                    <!-- Page Content -->

                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            เพิ่มสินค้าใหม่</div>
                        <div class="card-body">

                            <form class="needs-validation" novalidate="" action="AddProduct" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label>Upload Image</label>
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <span class="btn btn-default btn-file">
                                                    Browse… <input type="file" name="pic" id="imgInp">
                                                </span>
                                            </span>
                                            <input type="text" class="form-control" readonly>
                                        </div>
                                        <img id='img-upload'/>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="lastName">ชื่อสินค้า</label>
                                        <input type="text" name="productname" class="form-control" id="lastName" placeholder="ชื่อสินค้า" value="" required="">
                                        <div class="invalid-feedback">
                                            กรุณากรอกข้อมูลให้ครบถ้วน
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-5 mb-3">
                                        <label for="country">ประเภทสินค้า</label>
                                        <select name="category" class="custom-select d-block w-100" id="country" required="">
                                        <c:forEach items="${Category}" var="CategoryList">
                                            <option>${CategoryList.categoryname}</option>
                                        </c:forEach>
                                    </select>

                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="state">ชนิดของสินค้า</label>
                                    <select name="type" class="custom-select d-block w-100" id="state" required="">
                                        <option>House Tree</option>
                                        <option>Garden Tree</option>
                                    </select>

                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="zip">จำนวน</label>
                                    <input type="text" name="quantity" class="form-control" id="zip" placeholder="" required="">

                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="zip">ราคา</label>
                                    <input type="text" name="price" class="form-control" id="zip" placeholder="" required="">

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="zip">รายละเอียดสินค้า</label>
                                    <textarea class="form-control" name="detail"></textarea>

                                </div>
                            </div>

                            <hr class="mb-4">

                            <button class="btn btn-primary btn-lg btn-block" type="submit">เพิ่มสินค้า</button>
                    </div>
                    </form>


                </div>
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

<jsp:include page="adminFooter.jsp"></jsp:include>

<script>
    $(document).ready(function () {
        $(document).on('change', '.btn-file :file', function () {
            var input = $(this),
                    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
            input.trigger('fileselect', [label]);
        });

        $('.btn-file :file').on('fileselect', function (event, label) {

            var input = $(this).parents('.input-group').find(':text'),
                    log = label;

            if (input.length) {
                input.val(log);
            } else {
                if (log)
                    alert(log);
            }

        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#img-upload').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgInp").change(function () {
            readURL(this);
        });
    });

</script>
</body>
</html>
