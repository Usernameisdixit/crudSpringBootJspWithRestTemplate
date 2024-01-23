<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
</head>
<body>
    <h2>Update Employee</h2>
    <form action="/employee-ui/update/${employee.id}" method="post">
        Name: <input type="text" name="name" value="${employee.name}" required><br>
        Email: <input type="text" name="email" value="${employee.email}" required><br>
        Phone: <input type="text" name="phone" value="${employee.phone}"><br>
        Address: <input type="text" name="address" value="${employee.address}"><br>
        <input type="submit" value="Update Employee">
    </form>
    <a href="/employee-ui">Back to Employee List</a>
</body>
</html>
