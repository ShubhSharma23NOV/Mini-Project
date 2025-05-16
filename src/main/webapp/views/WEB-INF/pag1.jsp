<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to MyApp</title>
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

<!-- Welcome Container -->
<div class="container d-flex justify-content-center align-items-center" style="height: 80vh;">
    <div class="col-md-4 form-container text-center">
        <h2 class="mb-4">Welcome to MyApp</h2>
        <p class="lead mb-4">Please choose an option to continue:</p>
        
        <div class="d-grid gap-3">
            <a href="/login-page" class="btn btn-primary btn-lg">
                Login to Your Account
            </a>
            <a href="/regis-page" class="btn btn-success btn-lg">
                Create New Account
            </a>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    &copy; 2025 MyApp | All Rights Reserved
</footer>

</body>
</html>
