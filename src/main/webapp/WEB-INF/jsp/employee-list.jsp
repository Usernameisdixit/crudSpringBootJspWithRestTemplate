<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <h2>Employee List</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${employees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.phone}</td>
                <td>${employee.address}</td>
                <td>
                    <a href="/employee-ui/${employee.id}">View</a>
                    <a href="/employee-ui/update/${employee.id}">Update</a>
                    <a href="/employee-ui/delete/${employee.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/employee-ui/add">Add Employee</a>
</body>
</html>
