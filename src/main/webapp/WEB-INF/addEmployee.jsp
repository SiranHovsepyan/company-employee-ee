<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeee.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
</head>
<body>

<% List<Company> companies = (List<Company>) request.getAttribute("companies");
%>
Add Employee<br>
<form method="post" action="/addEmployee" enctype="multipart/form-data">
    Name:<input type="text" name="name"><br>
    Surname:<input type="text" name="surname"><br>
    Email:<input type="text" name="email"><br>
    <select name="companyId">
        <% for (Company company : companies) { %>
        <option value="<%=company.getId()%>"><%=company.getName()%></option>
        <% }
        %>

    </select><br>
    <input type="file" name="picture">
    <input type="submit" value="add">
</form>
</body>
</html>