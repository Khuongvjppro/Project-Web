<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup.css">
<title>Sign Up</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered !</h1>
<%} %>
<% 
if("invalid".equals(msg))
{

%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %> 
    <h2>Online Shopping</h2>
    <p>The Coffee House – Where Flavor Meets Passion.</p>
  </div>
</div>

</body>
</html>