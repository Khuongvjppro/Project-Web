<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
/* General Styles */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
    color: #333;
}

/* Hero Section */
.hero {
    background: url('images/logo.jpg') no-repeat center center/cover;
    height: 500px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: #fff;
    position: relative;
    box-shadow: 0 4px 6px rgba(0,0,0,0.3);
}


.hero h1 {
    font-size: 64px;
    margin: 0;
    text-shadow: 2px 4px 6px rgba(0, 0, 0, 0.5);
}

.hero p {
    font-size: 18px;
    margin: 20px 0;
    line-height: 1.6;
}

.hero a {
    display: inline-block;
    background-color: #ffcc66;
    color: #333;
    padding: 10px 20px;
    text-transform: uppercase;
    font-weight: bold;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.hero a:hover {
    background-color: #ff3c3c;
    color: #fff;
}

/* Product Section */
.product-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
    padding: 40px 20px;
    max-width: 1200px;
    margin: 0 auto;
}

.product-card {
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    transition: all 0.3s ease;
    text-align: center;
}

.product-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 8px 18px rgba(0, 0, 0, 0.3);
}

.product-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.product-card h3 {
    color: #4b2e83;
    margin: 15px 0 5px;
    font-size: 22px;
}

.product-card p {
    font-size: 14px;
    color: #777;
    margin: 5px 0;
}

.product-card a {
    display: inline-block;
    background-color: #28a745;
    color: white;
    padding: 8px 16px;
    margin: 15px 0;
    text-decoration: none;
    border-radius: 20px;
    transition: background-color 0.3s ease;
    font-size: 14px;
    font-weight: bold;
}

.product-card a:hover {
    background-color: #218838;
}

/* Messages */
.alert {
    text-align: center;
    color: #28a745;
    margin: 20px;
    font-size: 18px;
    font-weight: bold;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .hero h1 {
        font-size: 40px;
    }
    .hero p {
        font-size: 16px;
    }
    .product-card {
        margin: 0 10px;
    }
}
</style>
</head>
<body>

<!-- Hero Section -->
<section class="hero">
    <div>
        <h1>Welcome to Our Coffee Shop</h1>
        <p>Discover the best coffee products to kickstart your day!</p>
        <a href="#products">Shop Now</a>
    </div>
</section>

<!-- Notification Messages -->
<%
String msg = request.getParameter("msg");
if ("added".equals(msg)) {
%>
    <h3 class="alert">Product added successfully!</h3>
<%
} else if ("exist".equals(msg)) {
%>
    <h3 class="alert">Product already exists in your cart! Quantity increased.</h3>
<%
} else if ("invalid".equals(msg)) {
%>
    <h3 class="alert">Something went wrong!</h3>
<%
}
%>

<!-- Product Section -->
<section id="products" class="product-container">
<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM product WHERE active='Yes'");
    while (rs.next()) {
%>
    <div class="product-card">
        <!-- Product Image -->
        <img src="images/product-placeholder.jpg" alt="Product Image">
        <!-- Product Name -->
        <h3><%= rs.getString(2) %></h3>
        <!-- Product Category -->
        <p>Category: <%= rs.getString(3) %></p>
        <!-- Product Price -->
        <p><b>&#8377; <%= rs.getString(4) %></b></p>
        <!-- Add to Cart Button -->
        <a href="addToCartAction.jsp?id=<%= rs.getString(1) %>">Add to Cart</a>
    </div>
<%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</section>

</body>
</html>