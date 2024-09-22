<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign Up Page</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-container {
            background-color: white;
            width: 400px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .signup-container form {
            display: flex;
            flex-direction: column;
        }

        .signup-container form input {
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .signup-container form button {
            padding: 15px;
            background-color: #ff4b2b;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .signup-container form button:hover {
            background-color: #ff416c;
        }

        .signup-container p {
            text-align: center;
            margin-top: 15px;
        }

        .signup-container p a {
            color: #ff4b2b;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-container p a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 500px) {
            .signup-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="register" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            <button type="submit">Sign Up</button>
        </form>
        <p>Already have an account? <a href="login">Login here</a></p>
    </div>

</body>
</html>
