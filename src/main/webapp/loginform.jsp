<%--
  Created by IntelliJ IDEA.
  User: pangxie
  Date: 2020/7/21
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
</head>
<body>
<h4>Login Page</h4>
<form action="login" method="post">
    <%--sessionScope 获取 session 值--%>
    <h2 color="red">${sessionScope.message}</h2>
    <table>
        <tr>
            <td><label>username:</label></td>
            <td><input type="text" id="username" name="username" />
        </tr>
        <tr>
            <td><label>password:</label></td>
            <td><input type="password" id="password" name="password" />
        </tr>
        <tr>
            <td><input type="submit" value="login" />
        </tr>
    </table>
</form>
</body>
</html>
