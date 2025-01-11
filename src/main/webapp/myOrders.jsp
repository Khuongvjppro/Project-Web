<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
/* General Reset */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif; /* Font chữ hiện đại */
    background-color: #f9f9f9; /* Nền xám nhạt */
    color: #333;
    scroll-behavior: smooth;
}

/* Page Title */
.page-title {
    text-align: center;
    background: linear-gradient(to right, #4b2e83, #6f42c1); /* Gradient tím đẹp */
    color: #fff;
    padding: 25px 0;
    font-size: 36px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    animation: fadeIn 1s ease-in-out;
}

/* Fade-in Animation */
@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* Table Styling */
table {
    width: 90%;
    margin: 40px auto;
    border-collapse: collapse;
    background-color: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    animation: slideUp 1s ease-in-out;
}

@keyframes slideUp {
    from { transform: translateY(20px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
}

thead th {
    background: linear-gradient(to right, #6f42c1, #4b2e83); /* Gradient tím đậm */
    color: #fff;
    padding: 15px;
    font-size: 16px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

tbody td {
    padding: 15px;
    text-align: center;
    border-bottom: 1px solid #e0e0e0;
    font-size: 15px;
    color: #555;
    transition: background-color 0.3s, transform 0.2s;
}

/* Alternate Row Styling */
tbody tr:nth-child(odd) {
    background-color: #fafafa;
}

tbody tr:hover {
    background-color: #f1f1ff; /* Màu xanh nhạt khi hover */
    transform: scale(1.01);
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
}

/* Status Styling */
.status {
    display: inline-block;
    padding: 5px 12px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: bold;
    text-transform: uppercase;
    color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.status.pending {
    background: linear-gradient(to right, #f7b731, #ffcc00); /* Vàng gradient */
}

.status.delivered {
    background: linear-gradient(to right, #34e89e, #0f9b0f); /* Xanh lá gradient */
}

.status.cancelled {
    background: linear-gradient(to right, #ff6b6b, #ff4757); /* Đỏ gradient */
}

/* Responsive Design */
@media (max-width: 768px) {
    table {
        width: 100%;
    }

    thead th {
        font-size: 14px;
        padding: 10px;
    }

    tbody td {
        font-size: 12px;
        padding: 8px;
    }

    .page-title {
        font-size: 24px;
        padding: 15px 0;
    }
}

/* Footer */
footer {
    text-align: center;
    background-color: #4b2e83;
    color: #fff;
    padding: 15px;
    font-size: 14px;
    margin-top: 20px;
    letter-spacing: 1px;
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
}
</style>

</head>
<body>
<div class="orders-title">
    My Orders <i class='fab fa-elementor'></i>
</div>
<table>
        <thead>
         <tr>
            <th>S.No</th>
            <th>Product Name</th>
            <th>Category</th>
            <th><i class="fa fa-inr"></i> Price</th>
            <th>Quantity</th>
            <th><i class="fa fa-inr"></i> Sub Total</th>
            <th>Order Date</th>
            <th>Expected Delivery Date</th>
            <th>Payment Method</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next()){
		sno=sno+1;	
	
%>
          <tr>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(14)%></td>
            <td><%=rs.getString(15)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(16)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5)%> </td>
             <td><%=rs.getString(8)%></td>
              <td><%=rs.getString(9)%></td>
               <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(12)%></td>
            </tr>
         <%
         }}
         catch(Exception e){
        	 System.out.println(e);
         }
         %>
        </tbody>
      </table>
    </body>
    </html>
