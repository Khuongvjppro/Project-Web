<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/ChangeDetailsHeader.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<<<<<<< HEAD
    <!--Header-->
    <br>
    <div class="topnav sticky">
            <center><h2>Change Details<i class="fa fa-edit"></i></h2></center>
             <%String email=session.getAttribute("email").toString(); %>
            <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
             <h2><a href="">Your Profile(<%out.println(email); %>) <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="addChangeAddress.jsp">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="changeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
          </div>
           <br>
           <!--table-->
=======
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
>>>>>>> be3840bae36600c302e6333fc0e00eefc4d2978c
