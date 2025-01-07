<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/changeDetailss.css">
    <title>Change Details</title>
</head>
<body>

<div class="details-container">
    <h1>Change Details <i class="fa fa-coffee"></i></h1>
    <p>Review and update your account information below.</p>

    <%
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where email='" + email + "'");
        while (rs.next()) {
    %>
        <h3>Name: <span><%=rs.getString(1) %></span></h3>
        <hr>
        <h3>Email: <span><%=rs.getString(2) %></span></h3>
        <hr>
        <h3>Mobile Number: <span><%=rs.getString(3) %></span></h3>
        <hr>
        <button class="button" onclick="window.location.href='updateDetails.jsp'">Update Details <i class="fa fa-arrow-right"></i></button>
    <%
        }
    } catch (Exception e) {
        out.println("<h3 class='message error'>❌ Error retrieving data. Please try again later.</h3>");
    }
    %>
</div>

</body>
</html>
