<%--
  Created by IntelliJ IDEA.
  User: pangxie
  Date: 2020/7/21
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="right">
    Welcome,[<font color=red>${sessionScope.user.username}</font>] | <a
        href="loginout">Exit</a>
</div>
<br>
<center>
    <table border="1">
        <tbody>
        <tr>
            <th>id</th>
            <th>username</th>
            <th>password</th>
            <th>sex</th>
            <th>age</th>
            <th colspan="2" style="">Options</th>
        </tr>
        <c:if test="${!empty listUser }">
            <c:forEach items="${listUser}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.sex}</td>
                    <td>${user.age}</td>
                    <td><a href="toupdateuser?id=${user.id}">修改</a></td>
                    <td><a href="deleteuser?id=${user.id}">删除</a></td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>
    <br>
    <a href="toadduser">Add a new user</a>
</center>
</body>
</html>
