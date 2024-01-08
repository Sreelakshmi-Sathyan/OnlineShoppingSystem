<%@page import="com.demo.packag.ConnectionProvider" %>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
</head>
<body>
<div id ="container">
	<div class='signup'>
		<form action="forgotPasswordAction.jsp" method="post">
			<input type="email" name ="email" placeholder="Enter Email" required>
		<input type="number" name ="mobileNumber" placeholder="Enter Mobile Number" required>
		<select name="securityQuestion">
		<option value="What is your first Car?">What is your first Car?</option>
		<option value="What is the name of your first Pet?">What is the name of your first Pet?</option>
		<option value="What Elementry school did you attend?">What Elementary school did you attend?</option>
		<option value="What is the name of the town you were born?">What is the name of the town you were born?</option>
		<input type="text" name ="answer" placeholder="Enter Answer" required>
		<input type="password" name ="newPassword" placeholder="Enter your New Password" required>
		<input type="submit" value="Save">
		</select>
		</form>
		<h2><a href = "login.jsp">Login</a></h2>
	</div>
	<div class='whyforgotPassword'>
		<%
			String msg=request.getParameter("msg");
			if("done".equals(msg))
			{
				%>
				<h1>Password Changed Successfully!</h1>
			<% }%>
			<%
				if("invalid".equals(msg))
				{
				%>	<h1>Please Provide Correct Details!</h1>
				<% }%>
			<h2>Online Shopping</h2>
		<p>The Online Shopping System is the application that allows the users to Shop online without going to the shops to buy them.</p>
		
	</div>
</div>
</body>
</html>