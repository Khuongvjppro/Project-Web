
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
/* General Reset */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Open Sans', sans-serif; /* Font dễ đọc và hiện đại */
    background-color: #f5f5f7; /* Nền xám nhẹ */
    color: #333;
    scroll-behavior: smooth;
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
/* General Reset */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Open Sans', sans-serif; /* Font dễ đọc và hiện đại */
    background-color: #f5f5f7; /* Nền xám nhẹ */
    color: #333;
    scroll-behavior: smooth;
=======
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Playfair Display', serif; /* Font chữ cổ điển */
    background-color: #f4f1eb; /* Màu nền nhẹ */
 
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* My Cart Title */
.cart-title {
    text-align: center;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    background: linear-gradient(135deg, #1e3c72, #2a5298); /* Gradient xanh đậm */
    color: #fff;
    padding: 20px;
    font-size: 36px;
    font-weight: 700;
<<<<<<< HEAD
    text-transform: uppercase;
    letter-spacing: 2px;
    border-radius: 0 0 20px 20px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
=======
    text-transform: uppercase;
    letter-spacing: 2px;
    border-radius: 0 0 20px 20px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
<<<<<<< HEAD
=======
=======
    background-color: #4b2e83; /* Màu tím đậm */
    color: #ffcc66; /* Màu vàng nhạt */
    padding: 20px 0;
    font-size: 28px;
    font-weight: bold;
    letter-spacing: 1px;
    margin-top: 80px; /* Đẩy xuống tránh topbar */
    text-transform: uppercase;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* Alert Messages */
.alert {
    text-align: center;
    font-size: 18px;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    color: #e63946; /* Màu đỏ nổi bật */
    background-color: #fde2e4; /* Màu nền nhẹ */
    padding: 12px 15px;
    margin: 20px auto;
    width: 90%;
    border: 1px solid #e63946;
    border-radius: 8px;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
    color: #ffcc66; /* Màu vàng nổi bật */
    margin: 15px 0;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* Table Styling */
table {
    width: 90%;
    margin: 30px auto;
    border-collapse: collapse;
    background: #fff; /* Nền trắng */
    border-radius: 12px;
=======
<<<<<<< HEAD
    background: #fff; /* Nền trắng */
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

thead th {
    background-color: #1e3c72; /* Màu xanh đậm */
    color: #fff;
    padding: 16px;
<<<<<<< HEAD
=======
=======
    background: white;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

thead th {
<<<<<<< HEAD
    background-color: #1e3c72; /* Màu xanh đậm */
    color: #fff;
    padding: 16px;
=======
    background-color: #4b2e83; /* Màu tím đậm */
    color: white;
    padding: 15px;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    text-transform: uppercase;
    font-size: 16px;
}

tbody tr {
    transition: background-color 0.3s ease;
=======
<<<<<<< HEAD
tbody tr {
    transition: background-color 0.3s ease;
}

tbody tr:nth-child(even) {
    background-color: #f9f9f9; /* Dòng nền xám nhẹ */
}

tbody tr:hover {
    background-color: #e3f2fd; /* Nền xanh nhạt khi hover */
}

tbody td {
    padding: 15px;
    text-align: center;
    font-size: 16px;
    border-bottom: 1px solid #ddd;
<<<<<<< HEAD
=======
=======
tbody tr:nth-child(even) {
    background-color: #f9f9f9; /* Màu xám nhạt xen kẽ */
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
}

tbody tr:nth-child(even) {
    background-color: #f9f9f9; /* Dòng nền xám nhẹ */
}

tbody tr:hover {
<<<<<<< HEAD
    background-color: #e3f2fd; /* Nền xanh nhạt khi hover */
}

tbody td {
    padding: 15px;
    text-align: center;
    font-size: 16px;
    border-bottom: 1px solid #ddd;
=======
    background-color: #fffbf2; /* Màu nền nhẹ khi hover */
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* Quantity Control */
.quantity-control a {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    color: #28a745; /* Màu xanh lá */
    font-size: 20px;
    margin: 0 10px;
    transition: transform 0.3s ease, color 0.3s ease;
<<<<<<< HEAD
}

.quantity-control a:hover {
    color: #218838;
    transform: scale(1.2);
=======
}

.quantity-control a:hover {
    color: #218838;
    transform: scale(1.2);
<<<<<<< HEAD
=======
=======
    color: #28a745; /* Xanh lá */
    font-size: 18px;
    margin: 0 8px;
    transition: color 0.3s;
}

.quantity-control a:hover {
    color: #218838; /* Màu xanh lá đậm khi hover */
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* Remove Button */
.remove-btn {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    display: inline-block;
    background-color: #e63946; /* Đỏ nổi bật */
    color: #fff;
    padding: 8px 15px;
    border-radius: 8px;
<<<<<<< HEAD
=======
    text-decoration: none;
    font-size: 14px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.remove-btn:hover {
    background-color: #c82333;
    transform: translateY(-3px);
<<<<<<< HEAD
=======
=======
    color: white;
    background-color: #dc3545; /* Màu đỏ */
    padding: 8px 12px;
    border-radius: 5px;
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
    text-decoration: none;
    font-size: 14px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.remove-btn:hover {
<<<<<<< HEAD
    background-color: #c82333;
    transform: translateY(-3px);
=======
    background-color: #c82333; /* Màu đỏ đậm khi hover */
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

/* Total Section */
.total-section {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    margin: 40px auto;
    padding: 25px;
    background: linear-gradient(135deg, #4e54c8, #8f94fb); /* Gradient xanh tím */
    color: #fff;
    font-size: 20px;
<<<<<<< HEAD
    font-weight: bold;
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
=======
    font-weight: bold;
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
<<<<<<< HEAD
=======
=======
    margin: 20px auto;
    padding: 15px;
    background-color: #4b2e83; /* Màu tím đậm */
    color: white;
    border-radius: 5px;
    font-size: 18px;
    font-weight: bold;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

.total-section a {
    text-decoration: none;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    background-color: #28a745;
    color: #fff;
    padding: 12px 25px;
    border-radius: 8px;
    font-size: 16px;
    transition: background-color 0.3s ease, transform 0.3s ease;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
    background-color: #28a745; /* Xanh lá */
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s;
>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
}

.total-section a:hover {
    background-color: #218838;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

/* Icons */
i {
    margin-right: 5px;
}

/* Responsive Design */
@media (max-width: 768px) {
    .cart-title {
        font-size: 28px;
        padding: 15px;
    }

    table {
        width: 100%;
        font-size: 14px;
    }

    thead th, tbody td {
        padding: 10px;
    }

    .total-section {
        flex-direction: column;
        text-align: center;
        gap: 15px;
    }

    .alert {
        width: 100%;
        font-size: 16px;
    }
}


<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
}

>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
</style>
</head>
<body>

 <div style="
    background: url('images/logo.jpg'); /*THÊM ẢNH VÀO BÌA VÀO TIÊU ĐỀ*/
    height: 350px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
    font-family: 'Arial', sans-serif;
    font-size: 100px;
    font-weight: bold;
    text-shadow: 2px 2px 4px #000000;
    position: relative;
    box-shadow: 0 4px 6px rgba(0,0,0,0.3);
    ">My Cart <i 
      ></i></div>

<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>
<% 
if("dec".equals(msg))
{
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>
<% 
if("remove".equals(msg))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
<table>
<thead>
<%
int total=0;
int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next()){
		total=rs1.getInt(1);
	}
%>
          <tr>
            <th scope="col" style="background-color: yellow;">Total:<%out.println(total); %> <i class="fa fa-inr"></i> </th>
            <%if (total>0){ %><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"'and cart.address is NULL");
	  while(rs.next()){
      %>
          <tr>
			<%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %> </td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString(8) %>  <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(10) %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1) %>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
<% 
}
	  }
catch(Exception e){
}
%>
        </tbody>
      </table>
      
      <br>
      <br>
      <br>

</body>
</html>