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
=======
<<<<<<< HEAD
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
<<<<<<< HEAD
    .product-card img {
    width: 100%;                   
    height: 200px;                
    object-fit: cover;             
    border-bottom: 1px solid #ddd;
    border-radius: 10px 10px 0 0;  
    transition: transform 0.3s;    
}

.product-card img:hover {
    transform: scale(1.2); 
}
</style>
</head>
<body>
=======
=======

body, html {
    background-color: #f4f1eb;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d

<!-- Hero Section -->
<section class="hero">
    <div>
        <h1>Welcome to Our Coffee Shop</h1>
        <p>Discover the best coffee products to kickstart your day!</p>
        <a href="#products">Shop Now</a>
    </div>
</section>

<!-- Notification Messages -->
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
<div style="margin-top: 30px; 
    text-align: center; 
    font-size: 24px;
    color: #4b2e83;"> Home <i class="fa fa-institution"></i></div>
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
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
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
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
=======
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something wrong</h3>
<%} %>
<div class="product-container">
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM product WHERE active='Yes'");
    while (rs.next()) {
<<<<<<< HEAD
        String productName = rs.getString(2);  // Tên sản phẩm
        String imagePath = "images/product-placeholder.jpg";  // Ảnh mặc định

        // Nếu sản phẩm là "soda", hiển thị ảnh logo.jpg
        if (productName.equalsIgnoreCase("Cafe sữa")) {
            imagePath = "images/logo.jpg";
        }else  if (productName.equalsIgnoreCase("Cafe đen")) {
            imagePath = "images/logo.jpg";
        }
        else  if (productName.equalsIgnoreCase("Cafe trứng")) {
            imagePath = "images/logo.jpg";
        }
        else  if (productName.equalsIgnoreCase("Cafe muối")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Bạc xỉu")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Cafe sữa dừa")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà dâu")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà bưởi")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà chanh")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà trái cây")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà chanh dây")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Trà vải")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Hồng trà")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Soda xoài")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Soda bạc hà")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Soda blue")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Soda việt quất")) {
            imagePath = "images/logo.jpg";
        }
    
        else  if (productName.equalsIgnoreCase("Soda nho")) {
            imagePath = "images/logo.jpg";
        }
    
        
=======
=======
<<<<<<< HEAD
    while (rs.next()) {
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
%>
    <div class="product-card">
        <!-- Ảnh Sản Phẩm -->
        <img src="<%= imagePath %>" alt="<%= productName %> Image">
        <!-- Tên Sản Phẩm -->
        <h3><%= productName %></h3>
        <!-- Danh Mục Sản Phẩm -->
        <p>Category: <%= rs.getString(3) %></p>
        <!-- Giá Sản Phẩm -->
        <p><b>&#8377; <%= rs.getString(4) %></b></p>
<<<<<<< HEAD
        <!-- Nút Thêm Vào Giỏ Hàng -->
=======
        <!-- Add to Cart Button -->
=======
    while(rs.next()) {
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
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
<<<<<<< HEAD
        <!-- Add to Cart Button -->
=======
        <!-- Nút Add to Cart -->
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
        <a href="addToCartAction.jsp?id=<%= rs.getString(1) %>">Add to Cart</a>
    </div>
<%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</section>
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
} catch (Exception e) {
    e.printStackTrace();
}
%>
</section>
=======
} catch(Exception e) {
    e.printStackTrace();
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d

</body>
</html>
