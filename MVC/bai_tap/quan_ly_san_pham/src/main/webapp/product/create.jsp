<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/13/2021
  Time: 6:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">Create new product</h1>
<p style="text-align: center">
    <button type="button" class="btn btn-secondary">
        <a href="/products" style="text-decoration: none ; color: black ; font-weight: bold">Back to product list</a>
    </button>
</p>
<form method="post">
    <h3 style="text-align: center">Customer information</h3>
    <table>
        <tr>
            <td>Id</td>
            <td class="a"><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td class="a"><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td class="a"><input type="text" name="price"></td>
        </tr>
        <tr>
            <td>Date</td>
            <td class="a"><input type="text" name="date"></td>
        </tr>
        <tr>
            <td>Img</td>
            <td class="a"><input type="text" name="img" width="190px"></td>
            <td>
                <button type="button" class="btn btn-outline-primary">Choose File</button>
            </td>
        </tr>
        <tr>
            <td>Origin</td>
            <td class="a"><input type="text" name="origin"></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td class="a">
                <button type="submit" class="btn btn-outline-primary">Create New Product</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <p style="color: red">
                    <c:if test="${requestScope['message']!=null}">
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
