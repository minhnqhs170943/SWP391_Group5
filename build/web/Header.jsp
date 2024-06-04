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

        <!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item active"><a class="nav-link" href="home">Home</a></li>
                                <li class="nav-item submenu dropdown">
                                    <a href="/productlist" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Category</a>
                                    <ul class="dropdown-menu">
                                        <c:forEach items="${listC}" var="c">
                                            <li class="nav-item"><a class="nav-link" href="${c.name.toLowerCase()}list">${c.name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Account</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="tracking.html">User Profile</a></li>
                                        <li class="nav-item"><a class="nav-link" href="elements.html">Change Password</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a href="Login.jsp" class="nav-link">Login</a>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item"><a href="ShoppingCart.jsp" class="cart"><span class="ti-bag"></span></a></li>
                            </ul>

                            <div class="col-md-6">
                                <div class="header-search">
                                    <form action="search">
                                        <input  class="input" placeholder="Search here" name="txt" value="${value}">
                                        <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                    </form>
                                </div>
                            </div>
                            <!-- /SEARCH BAR -->
                        </div>
                    </div>
                </nav>
            </div>

        </header>
        <!-- End Header Area -->



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
