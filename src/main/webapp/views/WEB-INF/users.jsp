<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.Mini_Project.entity.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Users - MyApp</title>
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
            <a class="nav-link" href="/">Logout</a>
        </div>
    </div>
</nav>

<!-- Main Container -->
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <!-- Search Box -->
            <div class="form-container mb-4">
                <h3 class="text-center mb-4">Search Users</h3>
                <form action="/find" method="get">
                    <div class="input-group mb-3">
                        <input type="text" 
                               class="form-control form-control-lg" 
                               name="name" 
                               placeholder="Enter name to search..."
                               required>
                        <button class="btn btn-primary" type="submit">
                            <i class="bi bi-search me-2"></i>Search
                        </button>
                    </div>
                </form>
            </div>

            <!-- Results Container -->
            <div class="form-container">
                <h4 class="mb-4">Search Results</h4>
                
                <!-- Users Table -->
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Username</th>
                                <th>Password</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                List<User> user = (List<User>) request.getAttribute("user");
                                if(user != null) {
                                	for(User u:user){
                            %>
                                <tr>
                                    <td><%= u.getName() %></td>
                                    <td><%= u.getUserName() %></td>
                                    <td><%= u.getPassword() %></td>
                                </tr>
                            <% 
                                	} } else {
                            %>
                                <tr>
                                    <td colspan="3" class="text-center">No user found</td>
                                </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Back Button -->
            <div class="text-center mt-4">
                <a href="home" class="btn btn-outline-primary">
                    <i class="bi bi-arrow-left me-2"></i>Back to Dashboard
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