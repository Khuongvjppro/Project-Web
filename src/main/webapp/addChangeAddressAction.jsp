<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update user set address=?");
	ps.setString(1,address);
	ps.executeUpdate();
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");
}
%>