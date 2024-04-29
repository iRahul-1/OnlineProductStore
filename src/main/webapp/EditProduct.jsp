<%@page import="com.onlineproductstoreadmin.ProductBean"%>
<%@page import="com.onlineproductstoreadmin.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 500px;
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

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .message {
        margin-top: 20px;
        text-align: center;
        font-weight: bold;
        color: green;
    }
</style>
</head>
<body>
<div class="container">
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("<h2>Update Product</h2>");
out.println("<p>Page Belongs to Admin: " + ab.getfName() + "</p>");
ProductBean pb = (ProductBean)request.getAttribute("pbean");
%>
<form action="update" method="post">
    <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
    <label for="price">Product Price:</label>
    <input type="text" name="price" id="price" value="<%= pb.getPrice() %>"><br>
    <label for="qty">Product Quantity:</label>
    <input type="text" name="qty" id="qty" value="<%= pb.getQty() %>"><br>
    <input type="submit" value="Update Product">
</form>
</div>
</body>
</html>
