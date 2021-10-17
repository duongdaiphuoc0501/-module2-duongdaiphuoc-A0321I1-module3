<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/13/2021
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Products List</h1>
<p>
    <button type="button" class="btn btn-success">
        <a href="/products?action=create" style="width: 250px ; color: black ; font-weight: bold">Create new product</a>
    </button>
</p>
<table class="table table-striped">
    <tr class="xx">
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Date</td>
        <td>Img</td>
        <td>Origin</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDate()}</td>
            <td>
                <img src="/img/${product.getImg()}" width="50" height="50"/>
            </td>
            <td>${product.getOrigin()}</td>
            <td>
                <button type="button" class="btn btn-info">
                    <a href="/products?action=edit&id=${product.getId()}"
                       style="color: black ; font-weight: bold">Edit</a>
                </button>
            </td>
            <td>
                <button type=" button" class="btn btn-danger">
                    <a href="/products?action=delete&id=${product.getId()}" style="color: black ; font-weight: bold">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
