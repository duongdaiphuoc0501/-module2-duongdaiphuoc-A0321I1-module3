<%--
  Created by IntelliJ IDEA.
  User: LinhDN
  Date: 10/13/2021
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <a href="/product?action=create" class="btn btn-success">Thêm mới</a>
<table id="product" class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Mã sản phẩm</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col">Giá</th>
        <th scope="col">Trạng thái</th>
        <th scope="col">Danh mục</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${productList}">
    <tr>
        <td> ${product.idProduct}</td>
        <td> ${product.nameProduct}</td>
        <td> ${product.price}</td>
        <td> ${product.status ? 'Còn hàng': 'Hết hàng'}</td>
        <td> ${product.nameCategory}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>

</div>
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
<script>
    $(document).ready(function () {
        $('#product').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        })
    })
</script>
</body>
</html>
