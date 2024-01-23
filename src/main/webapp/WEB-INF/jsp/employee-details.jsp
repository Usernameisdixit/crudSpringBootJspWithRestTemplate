<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Details</title>
</head>
<body>
    <h2>Employee Details</h2>
    <p>ID: ${employee.id}</p>
    <p>Name: ${employee.name}</p>
    <p>Email: ${employee.email}</p>
    <p>Phone: ${employee.phone}</p>
    <p>Address: ${employee.address}</p>
    <a href="/employee-ui">Back to Employee List</a>
</body>
</html>
