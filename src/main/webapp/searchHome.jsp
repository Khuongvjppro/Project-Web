<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #eceff1, #f6f9fc);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    min-height: 100vh;
}

h1 {
    font-size: 48px;
    margin: 40px 0;
    text-transform: uppercase;
    font-weight: 700;
    color: #333;
    text-align: center;
}

table {
    width: 90%;
    max-width: 1100px;
    border-collapse: collapse;
    margin: 40px 0;
    background-color: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
}

thead {
    background-color: #4a90e2;
    color: white;
}

thead th {
    padding: 20px;
    text-align: center;
    font-size: 18px;
    letter-spacing: 1px;
}

tbody tr {
    border-bottom: 1px solid #ddd;
    transition: background-color 0.3s ease;
}

tbody tr:hover {
    background-color: #f1f1f1;
}

tbody td {
    padding: 18px;
    text-align: center;
    font-size: 16px;
}

tbody a {
    text-decoration: none;
    color: #4a90e2;
    font-weight: 600;
    transition: color 0.3s ease;
}

tbody a:hover {
    color: #357abd;
}

.footer {
    margin-top: auto;
    width: 100%;
    background-color: #333;
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
}

.fa-institution {
    color: #4a90e2;
}

h1.nothing {
    color: #555;
    font-size: 32px;
    margin: 50px 0;
    text-transform: none;
}

@media (max-width: 768px) {
    table {
        width: 100%;
    }
    
    thead th, tbody td {
        padding: 12px;
        font-size: 14px;
    }
    
    h1 {
        font-size: 36px;
    }
    
    .footer {
        font-size: 12px;
    }
}

</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
	String search=request.getParameter("search");
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where name like'%"+search+"%' or category like'%"+search+"%' and active='Yes'");
	while(rs.next()){
		z=1;
%>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
 <%
	}
}
catch(Exception e)
{
System.out.println(e);	
}%>        
        </tbody>
      </table>
      	<%if(z==0) {%>
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by BTech Days</p>
      </div>

</body>
</html>