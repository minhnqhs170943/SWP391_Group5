<%-- 
    Document   : Register
    Created on : May 22, 2024, 8:50:24 AM
    Author     : LAPTOP ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                background-color: #f8f9fa;
                font-family: Arial, sans-serif;
            }

            h2 {
                color: #343a40;
            }

            form {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            form .btn-primary {
                background-color: #ff6600;
                border-color: #ff6600;
                transition: background-color 0.3s ease, border-color 0.3s ease;
            }

            form .btn-primary:hover {
                background-color: #e65c00;
                border-color: #e65c00;
            }

            form .btn-secondary {
                background-color: #6c757d;
                border-color: #6c757d;
                transition: background-color 0.3s ease, border-color 0.3s ease;
            }

            form .btn-secondary:hover {
                background-color: #5a6268;
                border-color: #545b62;
            }

            form .form-group label {
                font-weight: bold;
            }

            form .form-control {
                margin-bottom: 15px;
            }

            .img-fluid {
                border-radius: 8px;
            }
        </style>
    </head>
    <body>
        
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6">
                    <img src="image.jpg" alt="Registration Image" class="img-fluid">
                </div>
                <div class="col-md-6">
                    
                    <h2 class="mb-4">REGISTRATION FORM</h2>
                    <% 
                    String errorMessage = request.getParameter("resultMessage");
                    if (errorMessage != null && !errorMessage.isEmpty()) {
                %>
                <div class="alert alert-danger" role="alert">
                    <%= errorMessage %>
                </div>
                <% } %>
                    <form action="register" method="post">
                        <div class="form-group">
                            <label for="name">Họ và tên</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ và tên" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Tài khoản đăng nhập</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tài khoản" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input type="tel" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ" required>
                        </div>
                        <div class="form-group">
                            <label for="dob">Ngày tháng năm sinh</label>
                            <input type="date" class="form-control" id="dob" name="dob" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu" required>
                        </div>
                        <div class="form-group">
                            <label for="confirm-password">Nhập lại mật khẩu</label>
                            <input type="password" class="form-control" id="confirm-password" name="confirm_password" placeholder="Nhập lại mật khẩu" required>
                        </div>
                        <div class="form-group text-right">
                            <button type="reset" class="btn btn-secondary mr-2">Reset Form</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
