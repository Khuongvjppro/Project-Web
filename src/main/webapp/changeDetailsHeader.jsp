<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/ChangeDetailsHeader.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>

<!--Header-->
<div class="topnav sticky">
    <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'></i> Back</a></h2>
    <% String email = session.getAttribute("email").toString(); %>
    <h2><a href=""> <% out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
</div>

<!-- Tùy chọn điều hướng -->
<div class="topnav">
    <a href="changePassword.jsp"><i class='fas fa-key'></i> Change Password</a>
    <a href="addChangeAddress.jsp"><i class='fas fa-map-marker-alt'></i> Add or Change Address</a>
    <a href="changeMobileNumber.jsp"><i class='fas fa-phone'></i> Change Mobile Number</a>
</div>

</body>
</html>
