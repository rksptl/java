<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 Not Found</title>
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
            text-align: center;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            border-radius: 5px;
        }
        h1 {
            font-size: 48px;
            color: #ff4b2b;
        }
        p {
            font-size: 18px;
            color: #333;
            margin: 20px 0;
        }
        .btn {
            padding: 10px 20px;
            background-color: #ff4b2b;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #ff416c;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>404</h1>
        <p>Oops! The page you're looking for does not exist.</p>
        <a href="login" class="btn">Go Back</a>
    </div>

</body>
</html>
