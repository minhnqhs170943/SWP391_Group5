<%-- 
    Document   : HomePage
    Created on : May 22, 2024, 8:22:05 AM
    Author     : LAPTOP ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">
        <style>
            .custom-img-size {
                width: 70px;
                height: 70px;
            }
            .cart .ti-bag {
                font-size: 20px; /* Điều chỉnh kích thước của icon */
            }

            .header-search {
                position: relative;
                margin-bottom: 10px; /* Điều chỉnh margin bottom ở đây */
                padding-top: 5px; /* Thêm một chút padding top nếu cần */
                float: right; /* Sử dụng float để dịch phải */
                margin-right: 20px; /* Điều chỉnh khoảng cách với cạnh phải */
            }

            .input {
                width: 100%;
                padding: 10px 15px;
                border: 1px solid #ccc;
                border-radius: 25px;
                font-size: 16px;
                outline: none;
            }

            .search {
                position: absolute;
                top: 60%;
                right: 10px;
                transform: translateY(-50%);
                background: transparent;
                border: none;
                outline: none;
                cursor: pointer;
            }

            .search .lnr {
                font-size: 20px;
                color: #333;
            }

            /* Thêm một chút hover effect */
            .search:hover .lnr {
                color: #555;
            }
        </style>
    </head>

    <body>
        <jsp:include page="Header.jsp" />

        <!-- start banner Area -->
        <section class="banner-area">
            <div class="container">
                <div class="row fullscreen align-items-center justify-content-start">
                    <div class="col-lg-12">
                        <div class="active-banner-slider owl-carousel">
                            <!-- single-slide -->
                            <div class="row single-slide align-items-center d-flex">
                                <div class="col-lg-5 col-md-6">
                                    <div class="banner-content">
                                        <h1>IPHONE New <br>Collection!</h1>
                                        <h3>IPHONE 15 SERIES</h3>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="banner-img">
                                        <img class="img-fluid" src="img/banner/banner.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <!-- single-slide -->
                            <div class="row single-slide">
                                <div class="col-lg-5">
                                    <div class="banner-content">
                                        <h1>IPHONE New <br>Collection!</h1>
                                        <h3>IPHONE 15 SERIES</h3>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="banner-img">
                                        <img class="img-fluid" src="img/banner/banner.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End banner Area -->
        <!-- start features Area -->
        <section class="features-area section_gap">
            <div class="container">
                <div class="row features-inner">
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon1.png" alt="">
                            </div>
                            <h6>Free Delivery</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon2.png" alt="">
                            </div>
                            <h6>Return Policy</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon3.png" alt="">
                            </div>
                            <h6>24/7 Support</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                    <!-- single features -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="f-icon">
                                <img src="img/features/f-icon4.png" alt="">
                            </div>
                            <h6>Secure Payment</h6>
                            <p>Free Shipping on all order</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end features Area -->

        <!-- Start category Area -->
        <section class="category-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-lg-8 col-md-8">
                                <div class="single-deal" onclick="location.href = '/Elec_Shopping/phonelist'">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="img/category/c1.jpeg" alt="">
                                    <div class="deal-details">
                                        <h6 class="deal-title">Phone</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-4">
                                <div class="single-deal" onclick="location.href = '/Elec_Shopping/tabletlist'">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="img/category/tablet.jpg" alt="">
                                    <div class="deal-details">
                                        <h6 class="deal-title">Tablet</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="single-deal" onclick="location.href = '/Elec_Shopping/accessorieslist'">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="img/category/accesory.png" alt="">
                                    <div class="deal-details">
                                        <h6 class="deal-title">Accessories</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8">
                                <div class="single-deal" onclick="location.href = '/Elec_Shopping/laptoplist'">
                                    <div class="overlay"></div>
                                    <img class="img-fluid w-100" src="img/category/laptop.png" alt="">
                                    <div class="deal-details">
                                        <h6 class="deal-title">Laptop</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-deal" onclick="location.href = 'img/category/c5.jpg'">
                            <div class="overlay"></div>
                            <img class="img-fluid w-100" src="img/category/c5.jpg" alt="">
                            <div class="deal-details">
                                <h6 class="deal-title"></h6>
                            </div>
                        </div>
                    </div>
                </div>
        </section>


        <!-- End category Area -->

        <!-- start product Area -->
        <section class="owl-carousel active-product-area section_gap">
            <!-- single product slide -->
            <div class="single-product-slider">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 text-center">
                            <div class="section-title">
                                <h1>Apple Product</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                    dolore
                                    magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- single product -->
                        <c:forEach items="${listA}" var="a">
                            <div class="col-lg-3 col-md-6">
                                <div class="single-product">
                                    <a href="ProductDetail.jsp"><img class="img-fluid" src="${a.url_img1}" alt=""></a>
                                    <div class="product-details">
                                        <a href="ProductDetail.jsp"><h6>${a.name}</h6></a>
                                        <div class="price">
                                            <h6>${a.formattedPrice}</h6>
                                        </div>
                                        <div class="prd-bottom">

                                            <a href="cart?action=add&quantity=1&productId=${a.id}" class="social-info">
                                                <span class="ti-bag"></span>
                                                <p class="hover-text">add to cart</p>
                                            </a>

                                            <a href="ProductDetail.jsp" class="social-info">
                                                <span class="lnr lnr-move"></span>
                                                <p class="hover-text">view more</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- single product slide -->
            <div class="single-product-slider">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 text-center">
                            <div class="section-title">
                                <h1>Samsung Product</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                    dolore
                                    magna aliqua.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- single product -->
                        <c:forEach items="${listS}" var="s">
                            <div class="col-lg-3 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="${s.url_img1}" alt="">
                                    <div class="product-details">
                                        <a href="ProductDetail.jsp"><h6>${s.name}</h6></a>
                                        <div class="price">
                                            <h6>${s.formattedPrice}</h6>
                                        </div>
                                        <div class="prd-bottom">
                                            <a href="" class="social-info">
                                                <span class="ti-bag"></span>
                                                <p class="hover-text">add to bag</p>
                                            </a>
                                            <a href="" class="social-info">
                                                <span class="lnr lnr-move"></span>
                                                <p class="hover-text">view more</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!-- end product Area -->


        <!-- Start related-product Area -->
        <section class="related-product-area section_gap_bottom">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6 text-center">
                        <div class="section-title">
                            <h1>Laptop Gaming</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-9">
                        <div class="row">
                            <c:forEach items="${listL}" var="l">
                                <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                    <div class="single-related-product d-flex">
                                        <a href="#"><img src="${l.url_img1}" alt="" class="custom-img-size"></a>
                                        <div class="desc">
                                            <a href="#" class="title">${l.name}</a>
                                            <div class="price">
                                                <h6>${l.formattedPrice}</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ctg-right">
                            <a href="#" target="_blank">
                                <img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End related-product Area -->

        <%@ include file="Footer.jsp" %>

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
