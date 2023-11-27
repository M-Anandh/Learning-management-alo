<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ALO Educational Hub</title>
    <link rel="icon" type="image/x-icon" href="assets/website-icon.png">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://img.freepik.com/free-photo/city-committed-education-collage-concept_23-2150062222.jpg?size=626&ext=jpg'); /* Replace 'background.jpg' with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
        }

        .header {
            color: blue;
            text-align: right;
            padding: 10px;
            position: fixed;
            width: 100%;
        }

        .header button {
            background-color: #0d21ff; /* Darker background color for buttons */
            border: none;
            color: #fff;
            padding: 10px 30px;
            margin-left: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Added transform property */
        }

        .header button:hover {
            background-color:lime;
            cursor: pointer;
            transform: scale(1.1); /* Change button shape on hover */
        }

        /* @keyframes animate {
            100% {
                filter: hue-rotate(360deg);
            }
        } */

        .container {
            max-width: 800px;
            margin: 100px auto;
            padding: 20px;
            /* Removed background-color property */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .announcement-container {
            overflow: hidden;
            white-space: nowrap;
            width: 100%;
        }

        .announcement {
            font-size: 18px;
            text-align: center;
            animation: marquee 20s linear infinite, changeText 10s linear 0s infinite, changeColor 10s linear 0s infinite, changeFont 10s linear 0s infinite, changeDirection 10s linear 0s infinite;
        }
        
        .header {
            /* ... (existing styles) ... */
            color: #fff;
            text-align: right;
            padding: 10px;
            position: fixed;
            width: 100%;
            display: flex;
            justify-content: flex-end;
        }

        .dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: blue;
    min-width: 60px;
    z-index: 1;
    top: 100%;
    left: 0;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content a {
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    color: #fff;
}

.dropdown-content a:hover {
    background-color: lime;
    color: #333;
}


    </style>
</head>
<div class="header">
    <div class="dropdown">
        <button>Login</button>
        <div class="dropdown-content">
            <a href="login-user.php">Student</a>
            <a href="admin/admin.html">Admin</a>
        </div>
    </div>
    <button onclick="location.href='signup-user.php'">Register</button>
</div>
<h1 style="text-align: center; color: blue; padding: 20px;">ALO Educational Hub</h1>
<div class="container">
    <!-- Your content goes here -->
</div>
</body>
</html>

