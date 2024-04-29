<%@page import="com.onlineproductstoreadmin.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
     <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
    <style>
        body {
            background-image:url("https://pimcore.com/en/insights/image-thumb__13840__default_og_image/insight-omnichannel-retail-strategy.jpg");
             background-size: cover;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 5px;
             box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .nav-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }
        .nav-link {
            text-decoration: none;
            background-color:#007bff;
            color: #f9f9f9;
            font-weight: bold;
            border: 1px solid #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
             box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .nav-link:hover {
            background-color:#007bff;
            color: #f9f9f9;
             border: 1px solid #fff;
        }
    </style>
</head>
<body>
    <div class="container">
    <% AdminBean ab = (AdminBean)session.getAttribute("abean");%>
        <h1>Welcome Admin: <%= ab.getfName() %></h1>
        <div class="nav-links">
            <a href="Product.html" class="nav-link">Add Product</a>
            <a href="View" class="nav-link">View Product</a>
            <a href="logout" class="nav-link">Logout</a>
        </div>
    </div>
</body>
</html>
