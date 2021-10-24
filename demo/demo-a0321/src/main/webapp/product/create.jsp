<%--
  Created by IntelliJ IDEA.
  User: LinhDN
  Date: 10/13/2021
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form action="/product?action=create" method="post">
        <div class="form-group">
            <label for="nameProduct">Tên sản phẩm</label>
            <input type="text" class="form-control" id="nameProduct" name="nameProduct">
        </div>
        <div class="form-group">
            <label for="price">Giá</label>
            <input type="text" class="form-control" id="price" name="price">
        </div>
        <div class="form-group">
            <label for="status">Trạng thái</label>
            <select class="form-control" id="status" name="status">
                <option value="true">Còn hàng</option>
                <option value="false">Hết hàng</option>
            </select>
        </div>
        <div class="form-group">
            <label for="idCategory">Danh mục</label>
            <select class="form-control" id="idCategory" name="idCategory">
               <c:forEach var="category" items="${listCategory}">
                   <option value="${category.idCategory}">${category.nameCategory}</option>
               </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
</body>
</html>
