<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
</head>
<body>
    <h2>Add Employee</h2>
    <form action="/employee-ui/add" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="text" name="email" required><br>
        Phone: <input type="text" name="phone"><br>
        Address: <input type="text" name="address"><br>
        <input type="submit" value="Add Employee">
    </form>
    <a href="/employee-ui">Back to Employee List</a>
</body>
</html>
