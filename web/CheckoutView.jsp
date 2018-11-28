<%-- 
    Document   : CheckoutView
    Created on : Nov 22, 2018, 5:21:17 PM
    Author     : llujo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Layout/Header.jsp?titleName=Checkout"></jsp:include>

    <body class="page page-shop header-compact-sticky page-shop navbar-layout-navbar-below">

    <jsp:include page="Layout/Navbar.jsp"></jsp:include>


        <div id="page-header">
            <div class="container clearfix">
                <h3 class="mb-0 float-md-left">
                    Checkout
                </h3>
                <!-- Page header breadcrumb -->
                <nav class="breadcrumb float-md-right"> <a class="breadcrumb-item" href="Home">Home</a> <a class="breadcrumb-item" href="Product">Product</a> <a class="breadcrumb-item" href="Cart">Cart</a> <span class="breadcrumb-item active">Checkout</span> </nav>
            </div>
        </div>

        <div id="content" class="py-5">
            <div class="container">

            <c:if test="${AddressActive != null}">
                <h4>
                    Shipping Address
                </h4>
                <div class="mb-4 bg-light p-3 rounded mb-4" id="billing">
                    <form id="frmUseAddress" action="CheckoutConfirm" method="post" accept-charset="UTF-8">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">First Name</label>
                                <input disabled="" type="text" value="${AccountInfo.fname}" class="form-control" placeholder="First Name">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Last Name</label>
                                <input disabled="" type="text" value="${AccountInfo.lname}" class="form-control" placeholder="Last Name">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Phone</label>
                                <input disabled="" type="tel" class="form-control" value="${AccountInfo.telno}" placeholder="Phone">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Email</label>
                                <input disabled="" type="email" class="form-control" value="${AccountInfo.email}" placeholder="Email">
                            </div>
                            <div class="col-md-12 mb-3">
                                <textarea disabled="" id="CustomerAddress"  class="form-control" placeholder="Address">${AddressActive.address}</textarea>
                            </div>

                        </div>
                    </form>  
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Changes address for shipping</button>

                </div>

            </c:if>



            <!--กรณีลูกค้าไม่มีที่อยู่-->
            <c:if test="${AddressActive == null}">
                <h4>
                    Create Address
                </h4>
                <div class="mb-4 bg-light p-3 rounded mb-4" id="billing">
                    <form id="frmCreateNewAddress" action="CheckoutConfirm" method="post" accept-charset="UTF-8">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">First Name</label>
                                <input disabled="" type="text" value="${AccountInfo.fname}" class="form-control" placeholder="First Name">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Last Name</label>
                                <input disabled="" type="text" value="${AccountInfo.lname}" class="form-control" placeholder="Last Name">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Phone</label>
                                <input disabled="" type="tel" class="form-control" value="${AccountInfo.telno}" placeholder="Phone">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="sr-only">Email</label>
                                <input disabled="" type="email" class="form-control" value="${AccountInfo.email}" placeholder="Email">
                            </div>
                            <div class="col-md-12 mb-3">
                                <textarea  id="CreateNewAddress" name="newAddress"  class="form-control"  placeholder="Address"></textarea>
                                <div class="invalid-feedback">จำเป็นต้องมีที่อยู่ในการจัดส่ง</div>
                            </div>
                        </div>
                    </form>



                </div>

            </c:if>

            <!--Model info-->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                Select your address
                            </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </div>
                        <div class="modal-body"> 

                            <div class="list-group">
                                <c:forEach items="${AddressList}" var="a">
                                    <a href="Checkout?setActiveAddress=${a.addressid}" class="list-group-item">${a.address}</a>
                                </c:forEach>
                            </div>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Payment Options -->
            <h4>
                Payment Options
            </h4>
            <div id="payment-options" class="bg-light p-3 rounded">
                <div class="form-check">
                    <label class="form-check-label" data-toggle="radio-collapse" data-target="#credit-card" data-parent="#payment-options">
                        <input class="form-check-input" type="radio" value="credit-card" checked="">
                        Credit Card <i class="fas fa-credit-card"></i> 
                    </label>
                    <div class="collapse show" id="credit-card" style="">
                        <div class="bg-white p-3 mt-2 rounded pos-relative">
                            <div class="row">
                                <div class="col-lg-3 mb-2 md-md-0">
                                    <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
                                </div>
                                <div class="col-lg-3 mb-2 md-md-0">
                                    <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
                                </div>
                                <div class="col-md-4 col-lg-2 mb-2 md-md-0">
                                    <select class="form-control" name="expiry-month" id="expiry-month">
                                        <option>Expiry Month</option>
                                        <option value="01">Jan (01)</option>
                                        <option value="02">Feb (02)</option>
                                        <option value="03">Mar (03)</option>
                                        <option value="04">Apr (04)</option>
                                        <option value="05">May (05)</option>
                                        <option value="06">June (06)</option>
                                        <option value="07">July (07)</option>
                                        <option value="08">Aug (08)</option>
                                        <option value="09">Sep (09)</option>
                                        <option value="10">Oct (10)</option>
                                        <option value="11">Nov (11)</option>
                                        <option value="12">Dec (12)</option>
                                    </select>
                                </div>
                                <div class="col-md-4 col-lg-2 mb-2 md-md-0">
                                    <select class="form-control" name="expiry-year">
                                        <option>Expiry Year</option>
                                        <option value="17">2017</option>
                                        <option value="18">2018</option>
                                        <option value="19">2019</option>
                                        <option value="20">2020</option>
                                        <option value="21">2021</option>
                                        <option value="22">2022</option>
                                        <option value="23">2023</option>
                                    </select>
                                </div>
                                <div class="col-md-4 col-lg-2">
                                    <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-check">
                    <label class="form-check-label" data-toggle="radio-collapse" data-target="#paypal" data-parent="#payment-options">
                        <input class="form-check-input" type="radio" value="paypal">
                        PayPal <i class="fab fa-paypal"></i> 
                    </label>
                    <div class="collapse" id="paypal" style="">
                        <div class="bg-white p-3 mt-2 rounded">
                            <label class="sr-only">PayPal Email</label>
                            <input type="email" class="form-control" placeholder="PayPal Email">
                            <small>Input your PayPal email address.</small>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Cart Summary -->
            <h4 class="mt-5">
                Cart Summary
            </h4>
            <!--Shopping cart items-->
            <table class="table table-responsive mb-0 cart-table">
                <thead>
                    <tr>
                        <th class="w-5"></th>
                        <th class="w-10"></th>
                        <th class="w-20">Item</th>
                        <th class="w-20">Unit Price</th>
                        <th class="w-20">Quantity</th>
                        <th class="w-20 text-md-right">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Cart item 1 -->
                    <c:forEach items="${cartList.lineItems}" var="cl">
                        <tr>
                            <td class="text-center align-middle">
                                <a href="Cart?page=cart&remove=${cl.product.productid}" class="close cart-remove"> <i class="fa fa-times"></i> </a>
                            </td>
                            <td class="text-center">
                                <a href="#">
                                    <img class="cart-img img-fluid" src="assets/img/ProductImg/${cl.product.productname}.jpg" alt="Product 1">
                                </a>
                            </td>
                            <td> <span class="font-weight-bold">${cl.product.productname}</span> </td>
                            <td>${cl.product.price }</td>
                            <td>

                                <div class="input-group input-group-quantity" data-toggle="quantity">
                                    <span class="input-group-prepend">
                                        <input onclick="window.location = 'Cart?quantity=minus&productid=${cl.product.productid}'" type="button" value="-" class="btn btn-secondary quantity-down" field="quantity">
                                    </span>
                                    <input type="text" name="quantity" value="${cl.quantity}" class="quantity form-control">
                                    <span class="input-group-append">
                                        <input onclick="window.location = 'Cart?quantity=plus&productid=${cl.product.productid}'" type="button" value="+" class="btn btn-secondary quantity-up" field="quantity">
                                    </span>
                                </div>

                            </td>
                            <td class="text-md-right"><span class="font-weight-bold">${cl.product.price*cl.quantity}</span></td>
                        </tr>
                    </c:forEach>


                </tbody>
            </table>
            <!--End of Shopping cart items-->
            <hr class="my-4 hr-lg">
            <div class="cart-content-footer">
                <div class="row">
                    <div class="col-md-4">
                        <h6 class="text-muted mb-3">
                            All prices are including VAT
                        </h6>
                        <!-- Discount form -->
                        <form action="#" role="form">
                            <div class="input-group">
                                <label class="sr-only" for="discount">Discount code</label>
                                <input type="tel" class="form-control" id="discount" placeholder="Discount code">
                                <span class="input-group-append">
                                    <button class="btn btn-dark" type="button">Go</button>
                                </span>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-8 text-md-right mt-3 mt-md-0">
                        <div class="cart-content-totals">
                            <h4 class="font-weight-light">
                                Subtotal: ${sessionScope.totalprice}
                            </h4>
                            
                            <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                            <h3>
                                Total: <span class="text-primary">${sessionScope.totalprice} Bath</span> <!-- รอการแก้ไขตัว discount --->
                            </h3>
                            <hr class="my-3 w-50 ml-0 ml-md-auto mr-md-0">
                        </div>
                        <!-- Proceed to checkout -->
                        <a href="Cart" class="btn btn-outline-primary btn-rounded btn-lg">Back to Cart</a> <a href="#" id="ClickConfirm" class="btn btn-primary btn-rounded btn-lg">Make payment</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>


<jsp:include page="Layout/Footer.jsp"></jsp:include>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <script>

                                            $(document).ready(function () {
                                                $("#ClickConfirm").click(function () {
    <c:if test="${AddressActive == null}">
                                                    var newAddress = document.getElementById("CreateNewAddress").value;
                                                    if (newAddress !== "") {
                                                        $("#frmCreateNewAddress").submit();
                                                    } else {
                                                        swal("เกิดข้อผิดพลาด", "คุณจำเป็นต้องกรอกที่อยู่", "warning", {
                                                            button: "ตกลง",
                                                        });
                                                        document.getElementById("CreateNewAddress").classList.add("is-invalid");
                                                    }
    </c:if>

    <c:if test="${AddressActive != null}">

                                                    $("#frmUseAddress").submit();

    </c:if>
                                                });

                                            });
</script>




</html>

