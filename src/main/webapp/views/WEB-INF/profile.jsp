<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.Mini_Project.entity.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - MyApp</title>
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
            <a class="nav-link" href="home">Dashboard</a>
            <a class="nav-link" href="users">Search Users</a>
            <a class="nav-link" href="/">Logout</a>
        </div>
    </div>
</nav>

<!-- Profile Container -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="form-container">
                <!-- Profile Header -->
                <div class="text-center mb-4">
                    <div class="profile-avatar mb-3">
                        <i class="bi bi-person-circle" style="font-size: 5rem; color: var(--primary-color);"></i>
                    </div>
                    <h2 class="mb-1">${user.name}</h2>
                    <p class="text-muted">@${user.userName}</p>
                </div>

                <!-- Profile Details -->
                <div class="profile-details">
                    <h4 class="mb-4">Profile Information</h4>
                    
                    <!-- User Details List -->
                    <div class="list-group">
                        <div class="list-group-item">
                            <div class="d-flex w-100">
                                <div class="me-3">
                                    <i class="bi bi-person text-primary"></i>
                                </div>
                                <div>
                                    <h6 class="mb-1">Full Name</h6>
                                    <p class="mb-0">${user.name}</p>
                                </div>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="d-flex w-100">
                                <div class="me-3">
                                    <i class="bi bi-at text-primary"></i>
                                </div>
                                <div>
                                    <h6 class="mb-1">Username</h6>
                                    <p class="mb-0">${user.userName}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Back Button -->
                    <div class="text-center mt-4">
                        <a href="home" class="btn btn-primary">
                            <i class="bi bi-arrow-left me-2"></i>Back to Dashboard
                        </a>
                    </div>
                </div>
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