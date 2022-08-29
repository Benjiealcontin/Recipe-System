<!DOCTYPE html>
<%@page import="java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Recipe Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="Javascript/Validation.js"></script>
<link rel="stylesheet" href="/css/register.css">
<style>
.login-form {
	width: 340px;
	margin: 50px auto;
	font-size: 15px;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="login-form">
		<form action="/verify" method="post"
			onSubmit="return validation();">
			<h2 class="text-center">Register</h2>
			<span id="messages" style="color: red"> ${msg2}</span>
 		 <span id="messages" style="color: red"> ${msg3}</span> <br>
			<div class="form-group">
				<input type="text" class="form-control" name="username"
					placeholder="Username" required="required">
			</div>
			<br>
			<div class="form-group">
				<input type="email" class="form-control" name="email"
					placeholder="Email" required="required">
			</div>
			<br>
			<div class="form-group">
				<input type="password" class="form-control" id="pass"
					name="password" placeholder="Password" required="required">
				<span id="messages" style="color: red"> </span> <br>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="pass2"
					placeholder="Confirm Password" required="required"> <span
					id="message" style="color: red"> </span> <br>
				<br>
				
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Register</button>
			</div>
		</form>
		<p class="text-center">
			<a href="login">Already Have an account?</a>
		</p>
	</div>
</body>
</html>