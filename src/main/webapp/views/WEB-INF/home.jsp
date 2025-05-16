<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ page import="com.example.Mini_Project.entity.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - MyApp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/WEB-INF/style.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MyApp</a>
        <div>
            <a class="nav-link" href="users">Search Users</a>
            <a class="nav-link" href="profile">Profile</a>
            <a class="nav-link" href="logout">Logout</a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container text-center d-flex justify-content-center align-items-center" style="height: 80vh;">
    <div class="form-container text-center">
        <h2 class="mb-4">Welcome, ${user.userName}!</h2>
        
        <!-- User Info -->
        <div class="user-info mb-4">
            <p class="mb-2"><strong>Name:</strong> ${user.name}</p>
            <p class="mb-3"><strong>Username:</strong> ${user.userName}</p>
        </div>
        
        <!-- Quick Actions -->
        <div class="quick-actions mt-4">
            <h4 class="mb-3">Quick Actions</h4>
            <div class="d-grid gap-3">
                <a href="profile" class="btn btn-primary btn-lg">
                    <i class="bi bi-person-circle me-2"></i> View Profile
                </a>
                <a href="find" class="btn btn-info btn-lg text-white">
                    <i class="bi bi-search me-2"></i> Search Users
                </a>
                <a href="/" class="btn btn-outline-danger btn-lg">
                    <i class="bi bi-box-arrow-right me-2"></i> Logout
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    &copy; 2025 MyApp | All Rights Reserved
</footer>

</body>
</html>
