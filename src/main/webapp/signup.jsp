<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body style="background-color: #338BA8;">
<div id='container'>
	<div class='signup'>
		<form action="signupAction.jsp" method ="post">
		<input type="text" name ="name" placeholder="Enter Name" required>
		<input type="email" name ="email" placeholder="Enter Email" required>
		<input type="number" name ="mobileNumber" placeholder="Enter Mobile Number" required>
		<select class="input-style" name="securityQuestion">
		<option value="What is your first Car?">What is your first Car?</option>
		<option value="What is the name of your first Pet?">What is the name of your first Pet?</option>
		<option value="What Elementry school did you attend?">What Elementry school did you attend?</option>
		<option value="What is the name of the town you were born?">What is the name of the town you were born?</option>
		
		</select>
		<input type="text" name ="answer" placeholder="Enter Answer" required>
		<input type="password" name ="password" placeholder="Enter your Password" required>
		<input style= "text-decoration: none;" type="submit" value="Signup">
		</form>
		<h2 style= "text-decoration: none;"><a href="login.jsp">Login</a></h2>
	</div>
	<div class='whysign'>
	<%
	String msg=request.getParameter("msg");
	if("valid".equals(msg))
	{%>
		<h1>Successfully Registered   !!</h1>
	<%} %>
	<%if("invalid".equals(msg))
	{
	%>
	<h1>Some thing Went Wrong! Try Again!</h1>
	<%} %>
		<h2>Online Shopping</h2>
		<p>The Online Shopping System is the application that allows the users to Shop online without going to the shops to buy them.</p>
	
	</div>
</div>
</body>
</html>