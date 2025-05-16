<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/WEB-INF/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MyApp</a>
        <div>
            <a class="nav-link" href="/login-page">Login</a>
            <a class="nav-link" href="/regis-page">Register</a>
        </div>
    </div>
</nav>

<div class="container d-flex justify-content-center align-items-center" style="height: 80vh;">
    <div class="col-md-4 form-container">
        <h3 class="text-center">Register</h3>
        <form action="register" method="post">
            <div class="mb-3">
                <label>Username:</label>
                <input type="text" class="form-control" name="user_name" />
            </div>
            <div class="mb-3">
                <label>Name::</label>
                <input type="text" class="form-control" name="name" />
            </div>
            <div class="mb-3">
                <label>Password:</label>
                <input type="text" class="form-control" name="password" />
            </div>
            <button type="submit" class="btn btn-success w-100">Register</button>
            <p class="text-center mt-3">Already have an account? <a href="login-page">Login here</a></p>
        </form>
    </div>
</div>

<footer>
    &copy; 2025 MyApp | All Rights Reserved
</footer>
</body>
</html>
