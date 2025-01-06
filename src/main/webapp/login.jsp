
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="Login">
     </form>
      <h2><a href="signup.jsp">Sign Up</a></h2>
      <h2><a href="forgotPassword.jsp">Forgot Password</a></h2>
 
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg)){
  %>
  <h1>Incorrect Username or Password</h1>
<%} %>
<%if("invalid".equals(msg)) 
{%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>The Coffee House</h2>
    <p> The Coffee House – Where Flavor Meets Passion. </p>
  </div>
</div>

</body>
</html>