<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home Page</title>
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
}
/* Top Navigation Bar */
.navbar {
	background-color: #333;
	overflow: hidden;
	position: fixed;
	width: 100%;
	top: 0;
	z-index: 1000;
}

.navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: #575757;
}

.navbar .logo {
	font-size: 24px;
	font-weight: bold;
}

/* Hero Section */
.hero {
	height: 100vh;
	background: linear-gradient(to right, #ff416c, #ff4b2b);
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	text-align: center;
	padding-top: 60px; /* To avoid overlap with navbar */
}

.hero h1 {
	font-size: 48px;
	margin: 0;
}

.hero p {
	font-size: 20px;
	margin: 10px 0 20px;
}

.hero button {
	background-color: white;
	color: #ff4b2b;
	padding: 15px 30px;
	border: none;
	font-size: 18px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.hero button:hover {
	background-color: #ff4b2b;
	color: white;
}

/* Features Section */
.features {
	padding: 50px 20px;
	text-align: center;
	background-color: #fff;
}

.features h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.features .feature-cards {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
}

.features .card {
	background-color: #f9f9f9;
	padding: 30px;
	border-radius: 10px;
	margin: 10px;
	flex-basis: 30%;
	text-align: center;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.features .card h3 {
	margin-bottom: 10px;
	font-size: 24px;
}

.features .card p {
	font-size: 16px;
}

/* Footer */
.footer {
	background-color: #333;
	color: white;
	padding: 20px;
	text-align: center;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.hero h1 {
		font-size: 36px;
	}
	.hero p {
		font-size: 18px;
	}
	.features .card {
		flex-basis: 100%;
	}
}
</style>
</head>
<body>

	<!-- Top Navigation Bar -->
	<div class="navbar">
		<a href="#" class="logo">JavaExpert</a> <a href="#home">Home</a> <a
			href="#features">Features</a> <a href="#about">About</a> <a
			href="#contact">Contact</a>
	</div>

	<!-- Hero Section -->
	<div class="hero" id="home">
		<h1>Welcome to Java Expert</h1>
		<p>Top Training to Become a Java Developer.</p>
		<button onclick="location.href='login'">Get Started</button>
	</div>

	<!-- Features Section -->
	<div class="features" id="features">
		<h2>Features</h2>
		<div class="feature-cards">
			<div class="card">
				<h3>Hands-on Coding Practice</h3>
				<p>Effective Java training programs emphasize practical coding exercises, allowing participants to apply concepts in real-world scenarios. This hands-on experience helps solidify understanding and enhances problem-solving skills.</p>
			</div>
			<div class="card">
				<h3>Comprehensive Curriculum</h3>
				<p>A well-structured curriculum covers core Java concepts, object-oriented programming, data structures, and frameworks like Spring and Hibernate. This comprehensive approach ensures learners gain a deep understanding of the language and its ecosystem.</p>
			</div>
			<div class="card">
				<h3>Project-Based Learning</h3>
				<p>Many training programs incorporate projects that mimic industry challenges, enabling learners to build a portfolio. This not only reinforces learning but also provides valuable experience that can be showcased to potential employers.</p>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer" id="contact">
		<p>
			Ducat - N/63/7179 &copy; 2024 Rakesh Patel. All rights reserved. | <a href="mailto:mr.rakesh@hotmail.com">Contact Us</a>
		</p>
	</div>

</body>
</html>
