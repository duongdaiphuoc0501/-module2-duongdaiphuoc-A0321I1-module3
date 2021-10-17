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
<h1 style="text-align: center">Edit Product</h1>
<p style="text-align: center">
    <button type="button" class="btn btn-secondary">
        <a href="/products" style="text-decoration: none ; color: black ; font-weight: bold">Back to product list</a>
    </button>
</p>

<form method="post">
    <table>
        <tr>
            <td>Name</td>
            <td class="a"><input type="text" name="name" value="${requestScope["product"].getName()}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td class="a"><input type="text" name="price" value="${requestScope["product"].getPrice()}"></td>
        </tr>
        <tr>
            <td>Date</td>
            <td class="a"><input type="text" name="date" value="${requestScope["product"].getDate()}"></td>
        </tr>
        <tr>
            <td>Img</td>
            <td class="a"><input type="text" name="img" value="${requestScope["product"].getImg()}"></td>
            <td>
                <button type="button" class="btn btn-primary">Choose file</button>
            </td>
        </tr>
        <tr>
            <td>Origin</td>
            <td class="a"><input type="text" name="origin" value="${requestScope["product"].getOrigin()}"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-info">Update Product</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <p style="color: red">
                    <c:if test="${requestScope['message']!=null}">
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p></td>
        </tr>
    </table>
</form>
</body>
</html>
