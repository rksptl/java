<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Reset Password</title>
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

        .reset-container {
            background-color: white;
            width: 400px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .reset-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .reset-container form {
            display: flex;
            flex-direction: column;
        }

        .reset-container form input {
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .reset-container form button {
            padding: 15px;
            background-color: #ff4b2b;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .reset-container form button:hover {
            background-color: #ff416c;
        }

        .reset-container p {
            text-align: center;
            margin-top: 15px;
        }

        .reset-container p a {
            color: #ff4b2b;
            text-decoration: none;
            font-weight: bold;
        }

        .reset-container p a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 500px) {
            .reset-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="reset-container">
        <h2>Reset Password</h2>
        <form action="reset_password" method="post">
            <input type="email" name="email" placeholder="Enter your email" required>
            <button type="submit">Send Reset Link</button>
        </form>
        <p>Remember your password? <a href="login">Login here</a></p>
    </div>

</body>
</html>
