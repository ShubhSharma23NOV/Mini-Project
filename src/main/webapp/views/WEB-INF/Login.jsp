<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/WEB-INF/style.css">

</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MyApp</a>
        <div>
            <a class="nav-link" href="/login-page">Login</a>
            <a class="nav-link" href="/regis-page">Register</a>
        </div>
    </div>
</nav>

<!-- Login Form -->
<div class="container d-flex justify-content-center align-items-center" style="height: 80vh;">
    <div class="col-md-4 form-container">
        <h3 class="text-center">Login</h3>
        <form action="login" method="post">
            <div class="mb-3">
                <label for="username">Username:</label>
                <input type="text" class="form-control" name="user_name" required/>
            </div>
            <div class="mb-3">
                <label for="password">Password:</label>
                <input type="text" class="form-control" name="password" required/>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
            <p class="text-center mt-3">Don't have an account? <a href="regis-page">Register here</a></p>
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    &copy; 2025 MyApp | All Rights Reserved
</footer>
</body>
</html>
