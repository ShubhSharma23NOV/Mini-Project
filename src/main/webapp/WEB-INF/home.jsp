<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ page import="com.example.Mini_Project.entity.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MyApp</a>
        <div>
            <a class="nav-link" href="logout">Logout</a>
        </div>
    </div>
</nav>

<div class="container text-center d-flex justify-content-center align-items-center" style="height: 80vh;">
    <div>
        <h1>Welcome, ${user.userName}!</h1>
        <h1>Name: ${user.name}!</h1>
        <h1>Password, ${user.password}!</h1>
        <p class="lead">This is your dashboard.</p>
        <a class="btn btn-light mt-3" href="logout">Logout</a>
    </div>
</div>

<footer>
    &copy; 2025 MyApp | All Rights Reserved
</footer>
</body>
</html>
