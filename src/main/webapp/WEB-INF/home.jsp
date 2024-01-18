<%@ page import="com.example.companyemployeeee.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11.01.2024
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<% if (session.getAttribute("user") != null) {
    User user = (User) session.getAttribute("user");
%>
Welcome<%=user.getName() + " " + user.getSurname()%>!!!<a href="/logout">Logout</a>
<%}%>
<a href="/companies">View All Companies</a>
<a href="/employees">View All Employees</a>

</body>
</html>
