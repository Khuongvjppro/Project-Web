<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - The Coffee Shop</title>
    <link rel="stylesheet" href="css/about.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

    <!-- Navigation Bar -->
    <jsp:include page="header.jsp" />

    <!-- About Section -->
    <div class="about-container">
        <div class="about-title">
            About Us <i class="fa fa-address-book"></i>
        </div>

        <div class="about-content">
            <h2>Welcome to <strong>The Coffee Shop</strong></h2>
            <p>At <b>The Coffee Shop</b>, we are passionate about teaching programming and providing project-based tutorials for beginners.</p>
            <p>Our tutorials cover a wide range of technologies, including:</p>

            <ul>
                <li><i class="fa fa-database"></i> Database Management Systems (DBMS)</li>
                <li><i class="fa fa-network-wired"></i> Computer Networking</li>
                <li><i class="fa fa-cogs"></i> Business Process Management (BPM)</li>
                <li><i class="fa fa-server"></i> Operating Systems (OS)</li>
            </ul>

            <p>We believe in providing quality education for everyone, and we invite you to join our growing community!</p>

            <!-- Contact Section -->
            <div class="contact-info">
                <p><i class="fa fa-envelope"></i> Email: <a href="mailto:btechdays.care@gmail.com">btechdays.care@gmail.com</a></p>
                <p><i class="fa fa-instagram"></i> Instagram: <a href="https://instagram.com/btechdays" target="_blank">@btechdays</a></p>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <jsp:include page="footer.jsp" />

</body>
</html>
