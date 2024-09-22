<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Backend Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .dashboard-container {
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #333;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar h2 {
            margin-bottom: 20px;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 15px;
            width: 100%;
            text-align: center;
            display: block;
            transition: background 0.3s ease;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        .sidebar a.active {
            background-color: #ff416c;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
            flex: 1;
        }
        .topbar {
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .topbar h1 {
            font-size: 24px;
            margin: 0;
        }
        .cards {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .card {
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            flex-basis: 30%;
            margin-bottom: 20px;
            text-align: center;
        }
        .card h3 {
            margin-bottom: 10px;
        }
        .card p {
            font-size: 18px;
            margin: 0;
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Admin Panel</h2>
            <a href="#" class="active">Dashboard</a>
            <a href="#">Users</a>
            <a href="#">Reports</a>
            <a href="#">Settings</a>
            <a href="#">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Topbar -->
            <div class="topbar">
                <h1>Welcome, Admin</h1>
            </div>

            <!-- Dashboard Overview Cards -->
            <div class="cards">
                <div class="card">
                    <h3>Total Users</h3>
                    <p>1200</p>
                </div>
                <div class="card">
                    <h3>New Registrations</h3>
                    <p>300</p>
                </div>
                <div class="card">
                    <h3>Revenue</h3>
                    <p>$45,000</p>
                </div>
            </div>

            <!-- More detailed sections like tables, charts can be placed here -->
            <div class="cards">
                <div class="card">
                    <h3>Active Users</h3>
                    <p>850</p>
                </div>
                <div class="card">
                    <h3>Pending Issues</h3>
                    <p>20</p>
                </div>
                <div class="card">
                    <h3>Support Requests</h3>
                    <p>150</p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
