<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeee.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11.01.2024
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<body>
<%
    List<Employee> employees = (List<Employee>) request.getAttribute("employees");

%>
Employees | <a href="/addEmployee">Add Employee</a>
<%
    if (employees != null && !employees.isEmpty()) {
%>

<table border="2 solid">
    <tr>
        <th>ID</th>
        <th>Picture</th>
        <th>Name</th>
        <th>SurName</th>
        <th>Email</th>
        <th>Company Name</th>
        <th>Company Address</th>
        <th>Delete</th>
    </tr>
    <%
        for (Employee employee : employees) {%>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td>
            <%if (employee.getPicName() != null) {%>
            <img src="/downloadImage?imageName=<%=employee.getPicName()%>" width="50">
            <%}else{%>
            <span>No picture</span>
            <%}%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><%=employee.getCompany().getName()%>
        </td>
        <td><%=employee.getCompany().getAddress()%>
        </td>
        <td><a href="/deleteEmployee?id=<%=employee.getId()%>">Delete</a></td>
    </tr>

    <% }

    %>
</table>
<% }%>
</body>
</html>
