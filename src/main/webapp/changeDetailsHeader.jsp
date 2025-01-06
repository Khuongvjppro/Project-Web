<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
            <a href="">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="">Change Mobile Number <i class='fas fa-phone'></i></a>

>>>>>>> c0e4f0f1e23c8febaad337f016d34d46edc2b4ef
>>>>>>> 0c6068238b1ebf0322a4fc88daf6e12f0418a757
>>>>>>> f9eaa6f8f37402f78afec2c104a60a243fcd943d
>>>>>>> c7774d9fce8ee5353505428a7434dd0dab3a6bc7
          </div>
           <br>
           <!--table-->
