<%-- 
    Document   : ShoppingCart
    Created on : May 22, 2024, 8:27:00 AM
    Author     : LAPTOP ASUS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="getProduct" class="dal.homepageDAO" />
<!DOCTYPE html>
<html lang="zxx" class="no-js">

    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="CodePixar">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Karma Shop</title>

        <!--
                CSS
                ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">
        <style>
            body {
                scroll-behavior: smooth;
            }
        </style>
    </head>

    <body>
        <jsp:include page="Header.jsp" />

        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Shopping Cart</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="category.html">Cart</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->

        <!--================Cart Area =================-->
        <section class="cart_area">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${carts.size() == 0}">
                                    <tr>
                                        <td colspan="10" style="text-align: center; font-weight: bold">No have product in cart</td>
                                    </tr>
                                </c:if>
                                <c:set var="totalCart" value="0" />
                                <c:forEach items="${carts}" var="cart">
                                    <c:set var="product" value="${getProduct.getProductByID(cart.productId)}" />
                                    <c:if test="${product != null}"> 
                                        <c:set var="totalCart" value="${totalCart + (product.price * cart.quality)}" />
                                        <tr id="cart-${product.id}">
                                            <td>
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="${product.url_img1}" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <p>${product.name}</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${product.price}</h5>
                                            </td>
                                            <td>
                                                <div class="product_count">
                                                    <input onChange="checkInput(this)" type="text" name="qty" id="sst-${product.id}" maxlength="12" value="${cart.quality}" title="Quantity:"
                                                           class="input-text qty" min="1" max="${product.quality}">
                                                    <button onclick="up('${product.id}')"
                                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                                    <button onclick="down('${product.id}')"
                                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                                    <div id="error-message" style="color: grren;"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${product.price * cart.quality}</h5>
                                            </td>
                                            <td>
                                                <a onclick="return confirm('Are you sure to delete?')" style="color: red" href="cart?action=remove&productId=${product.id}">x</a>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                            <script>
                                function checkInput(input) {
                                    var newValue = parseInt(input.value);
                                    var maxValue = parseInt(input.max);
                                    if (isNaN(newValue) || newValue > maxValue) {
                                        alert("Invalid input. Please enter a number less than or equal to " + maxValue);
                                        input.value = maxValue;
                                    }
                                }
                                const up = (id) => {
                                    const idGet = 'sst-' + id;
                                    var result = document.getElementById(idGet);
                                    var sst = parseInt(result.value);
                                    if (sst >= parseInt(result.max)) {
                                        var errorMessage = document.createElement('div');
                                        errorMessage.textContent = "Quantity limit reached";
                                        errorMessage.style.color = "red";
                                        var parentDiv = result.parentNode;
                                        parentDiv.appendChild(errorMessage);
                                        setTimeout(() => errorMessage.remove(), 2000);
                                        return false;
                                    }
                                    if (!isNaN(sst)) {
                                        result.value++;
                                        updateCart(id, result.value, result);
                                    }
                                }

                                const down = (id) => {
                                    const idGet = 'sst-' + id;
                                    var result = document.getElementById(idGet);
                                    var sst = result.value;
                                    if (!isNaN(sst) && sst > 1) {
                                        result.value--;
                                        updateCart(id, result.value, result);
                                    }
                                    return false;
                                }

                                function updateCart(productId, quantity, result) {
                                    var xhr = new XMLHttpRequest();
                                    var url = "http://localhost:8080/Elec_Shopping/cart?action=update&productId=" + productId + "&quantity=" + quantity;

                                    xhr.open("GET", url, true);
                                    xhr.onreadystatechange = function () {
                                        if (xhr.readyState == 4 && xhr.status == 200) {
                                            var errorMessage = document.createElement('div');
                                            errorMessage.textContent = "Update cart successfully!";
                                            errorMessage.style.color = "green";
                                            var parentDiv = result.parentNode;
                                            parentDiv.appendChild(errorMessage);
                                            setTimeout(() => errorMessage.remove(), 2000);
                                        }
                                    }
                                    xhr.send();
                                }
                            </script>
                            <tr>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <h5>Subtotal</h5>
                                </td>
                                <td>
                                    <h5>$${totalCart}</h5>
                                </td>
                            </tr>

                            <tr class="out_button_area">
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="gray_btn" href="home">Continue Shopping</a>
                                        <a class="primary-btn" href="CheckOut.jsp">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Cart Area =================-->

        <%@ include file="Footer.jsp" %>

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
        <script>
                                window.onload = function () {
                                    const editedQuestionId = "${param.cartId}";
                                    if (editedQuestionId) {
                                        document.getElementById('cart-' + editedQuestionId).scrollIntoView();
                                    }
                                }
        </script>
    </body>

</html>
