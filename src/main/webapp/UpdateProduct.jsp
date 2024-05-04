<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.onlineproductstore.admin.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Product Store</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 800px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .message {
        margin-top: 20px;
        text-align: center;
        font-weight: bold;
        color: green;
    }

    .links {
        margin-top: 20px;
        text-align: center;
    }

    .links a {
        display: inline-block;
        margin: 0 10px;
        padding: 10px 20px;
        text-decoration: none;
        color: #007bff;
        border: 1px solid #007bff;
        border-radius: 5px;
    }

    .links a:hover {
        background-color: #007bff;
        color: #fff;
    }
</style>
</head>
<body>
<div class="container">
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
String msg = (String)request.getAttribute("msg");
out.println("<h2>Welcome, " + ab.getfName() + "</h2>");
if (msg != null && !msg.isEmpty()) {
    out.println("<p class='message'>" + msg + "</p>");
}
%>
<div class="links">
    <a href="Product.html">Add Product</a>
    <a href="View">View All Products</a>
    <a href="logout">Logout</a>
</div>
</div>
</body>
</html>
