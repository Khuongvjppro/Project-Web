<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String mobileNumber=request.getParameter("mobileNumber");
String paymentMethod=request.getParameter("paymentMethod");
String tranactionId="";
tranactionId=request.getParameter("transactionId");
String status="bill";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update user set address=?,mobileNumber=? where email=?");
	ps.setString(1,address);
	ps.setString(2,mobileNumber);
	ps.setString(3,email);
	ps.executeUpdate();
	
	PreparedStatement ps1=con.prepareStatement("update cart set address=?,mobileNumber=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionId=?,status=? where email=? and address is NULL");
	ps1.setString(1,address);
	ps1.setString(2,mobileNumber);
	ps1.setString(3,paymentMethod);
	ps1.setString(4,tranactionId);
	ps1.setString(5,status);
	ps1.setString(6,email);
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>