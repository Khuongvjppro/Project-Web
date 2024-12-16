
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
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Playfair Display', serif; /* Font chữ cổ điển */
    background-color: #f4f1eb; /* Màu nền nhẹ */
 
}

/* My Cart Title */
.cart-title {
    text-align: center;
    background-color: #4b2e83; /* Màu tím đậm */
    color: #ffcc66; /* Màu vàng nhạt */
    padding: 20px 0;
    font-size: 28px;
    font-weight: bold;
    letter-spacing: 1px;
    margin-top: 80px; /* Đẩy xuống tránh topbar */
    text-transform: uppercase;
}

/* Alert Messages */
.alert {
    text-align: center;
    font-size: 18px;
    color: #ffcc66; /* Màu vàng nổi bật */
    margin: 15px 0;
}

/* Table Styling */
table {
    width: 90%;
    margin: 30px auto;
    border-collapse: collapse;
    background: white;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

thead th {
    background-color: #4b2e83; /* Màu tím đậm */
    color: white;
    padding: 15px;
    text-transform: uppercase;
    font-size: 16px;
}

tbody tr:nth-child(even) {
    background-color: #f9f9f9; /* Màu xám nhạt xen kẽ */
}

tbody td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    font-size: 16px;
}

tbody tr:hover {
    background-color: #fffbf2; /* Màu nền nhẹ khi hover */
}

/* Quantity Control */
.quantity-control a {
    color: #28a745; /* Xanh lá */
    font-size: 18px;
    margin: 0 8px;
    transition: color 0.3s;
}

.quantity-control a:hover {
    color: #218838; /* Màu xanh lá đậm khi hover */
}

/* Remove Button */
.remove-btn {
    color: white;
    background-color: #dc3545; /* Màu đỏ */
    padding: 8px 12px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s;
}

.remove-btn:hover {
    background-color: #c82333; /* Màu đỏ đậm khi hover */
}

/* Total Section */
.total-section {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    margin: 20px auto;
    padding: 15px;
    background-color: #4b2e83; /* Màu tím đậm */
    color: white;
    border-radius: 5px;
    font-size: 18px;
    font-weight: bold;
}

.total-section a {
    text-decoration: none;
    background-color: #28a745; /* Xanh lá */
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.total-section a:hover {
    background-color: #218838;
}

</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>
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