<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>

body, html {
    background-color: #f4f1eb;
}

/* Navbar */
.navbar {
    background-color: #4b2e83;
    color: white;
    padding: 10px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin-left: 20px;
    font-size: 16px;
    transition: color 0.3s;
}



/* Product Section */
.product-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    padding: 20px;
    margin: 30px auto;
    width: 90%;
}

.product-card {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    overflow: hidden;
    transition: transform 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
}

.product-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.product-card h3 {
    font-size: 20px;
    color: #4b2e83;
    margin: 15px 0 10px;
}

.product-card p {
    font-size: 16px;
    color: #555;
    margin: 5px 0;
}

.product-card a {
    display: inline-block;
    margin: 10px 0;
    padding: 8px 16px;
    background-color: #28a745;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.product-card a:hover {
    background-color: #218838;
}

</style>
</head>
<body>
<div style="margin-top: 30px; 
    text-align: center; 
    font-size: 24px;
    color: #4b2e83;"> Home <i class="fa fa-institution"></i></div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<% 
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something wrong</h3>
<%} %>
<div class="product-container">
<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM product WHERE active='Yes'");
    while(rs.next()) {
%>
    <div class="product-card">
        <!-- Hình ảnh sản phẩm (placeholder nếu chưa có ảnh) -->
        <img src="images/product-placeholder.jpg" alt="Product Image">
        <!-- Tên sản phẩm -->
        <h3><%= rs.getString(2) %></h3>
        <!-- Danh mục sản phẩm -->
        <p>Category: <%= rs.getString(3) %></p>
        <!-- Giá sản phẩm -->
        <p><b>&#8377; <%= rs.getString(4) %></b></p>
        <!-- Nút Add to Cart -->
        <a href="addToCartAction.jsp?id=<%= rs.getString(1) %>">Add to Cart</a>
    </div>
<%
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>