<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11.01.2024
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<%if (session.getAttribute("msg") != null) {%>
<span style="color: red"> <%=session.getAttribute("msg")%></span>
<%session.removeAttribute("msg");%>
<%}%>
<form action="/login" method="post">
    email:<input type="text" name="email"><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="login">
</form>
<br>
<br>
<br>
<br>
<br>

<form action="/register" method="post">
    name:<input type="text" name="name"><br>
    surname:<input type="text" name="surname"><br>
    email:<input type="text" name="email"><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="register">
</form>


</body>
</html>
