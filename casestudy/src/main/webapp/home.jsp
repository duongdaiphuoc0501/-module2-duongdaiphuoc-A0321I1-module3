<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/24/2021
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="XaydungLangdingPage.html.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .name{
          margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="col-lg-10">
        <img src="https://beedesign.com.vn/wp-content/uploads/2020/10/logo-chu%CC%9B%CC%83-P-3.png" height="50" width="100">
    </div>
    <div class="col-lg-2">
        <p class="name">Dương Đại Phước</p>
    </div>
</div>

<div class="container-fluid">
    <nav class="navbar navbar-inverse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Employee</a></li>
                <li><a href="#">Customer</a></li>
                <li><a href="#">Service</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <form class="navbar-form navbar-left" action="/action_page.php">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="search">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </form>
    </nav>
</div>
<div class="container-fluid">
    <div class="col-lg-3">
        <div class="row-lg-12"><p>Item1</p></div>
    </div>
    <div class="col-lg-9">

    </div>
</div>
<div class="container-fluid">
    <p>Cảm ơn</p>
</div>
</body>
</html>
