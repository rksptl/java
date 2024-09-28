<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f7f7f7;
}

.container {
	display: flex;
	width: 1024px;
	background-color: white;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.form-container {
	padding: 40px;
	width: 50%;
}

.form-container h2 {
	margin-bottom: 20px;
	font-size: 24px;
}

.form-container input {
	width: 95%;
	padding: 10px;
	margin: 15px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form-container .btn {
	width: 100%;
	padding: 10px;
	background-color: #ff4b2b;
	border: none;
	color: white;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.form-container .btn:hover {
	background-color: #ff416c;
}

.form-container .checkbox {
	display: flex;
	align-items: center;
	margin-top: 10px;
}

.form-container .checkbox input {
	margin-right: 5px;
	width: auto;
}

.form-container .forgot-password {
	margin-top: 10px;
	text-align: right;
}

.form-container .forgot-password a {
	color: #ff4b2b;
	text-decoration: none;
}

.form-container .forgot-password a:hover {
	text-decoration: underline;
}

.welcome-container {
	width: 50%;
	background: linear-gradient(to right, #ff416c, #ff4b2b);
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: white;
	padding: 40px;
}

.welcome-container h2 {
	font-size: 24px;
	margin-bottom: 10px;
}

.welcome-container p {
	margin-bottom: 20px;
}

.welcome-container .signup-btn {
	background-color: white;
	color: #ff4b2b;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
}

.welcome-container .signup-btn:hover {
	background-color: #f2f2f2;
}
</style>
</head>
<body>

	<div class="container">
		<!-- Sign In Section -->
		<div class="form-container">
			<h2>Sign In</h2>
			<form action="login" method="post">
				<input type="text" name="username" placeholder="Username" required>
				<input type="password" name="password" placeholder="Password"
					required>
				<button type="submit" class="btn">Sign In</button>
				<div class="checkbox">
					<input type="checkbox" name="rememberMe"> <label
						for="rememberMe">Remember Me</label>
				</div>
				<div class="forgot-password">
					<a href="forgot-password">Forgot Password?</a>
				</div>
			</form>

			<c:if test="${not empty error}">
				<p style="color: red;">${error}</p>
			</c:if>
		</div>

		<!-- Welcome Section -->
		<div class="welcome-container">
			<h2>Welcome to login</h2>
			<p>Don't have an account?</p>
			<button class="signup-btn" onclick="location.href='signup'">Sign
				Up</button>
		</div>
	</div>

</body>
</html>
