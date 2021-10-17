<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/13/2021
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">Delete Product</h1>
<p style="text-align: center">
  <button type="button" class="btn btn-secondary">
    <a href="/products" style="text-decoration: slategray ; color: greenyellow ; font-weight: bold">Back to product list</a>
  </button>
</p>

<form method="post">
  <h2 style="text-align: center">Information Product</h2>
  <table>
    <tr>
      <td>Id</td>
      <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
      <td>Name</td>
      <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
      <td>Price</td>
      <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
      <td>Date</td>
      <td>${requestScope["product"].getDate()}</td>
    </tr>
    <tr>
      <td>Img</td>
      <td>${requestScope["product"].getImg()}</td>
    </tr>
    <tr>
      <td>Origin</td>
      <td>${requestScope["product"].getOrigin()}</td>
    </tr>
    <tr>
      <td></td>
      <td>
        <button type="submit" class="btn btn-info">Delete Product</button>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
