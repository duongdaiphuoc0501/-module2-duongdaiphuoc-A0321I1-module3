<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="controller.Customer" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/8/2021
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Birthday</th>
        <th>Image</th>
    </tr>

    <c:forEach var="customer" items="${customersList}" varStatus="loop">
        <tr>
            <td><c:out value="${customer.name}"></c:out></td>
            <td><c:out value="${customer.address}"></c:out></td>
            <td><c:out value="${customer.image}"></c:out></td>
            <td><c:out value="${customer.birthday}"></c:out></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
