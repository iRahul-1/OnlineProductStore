<%@page import="java.util.Iterator"%>
<%@page import="com.onlineproductstoreadmin.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Quantity</title>
     <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
    <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    margin-top: 0;
}

.product-list {
    margin-bottom: 20px;
}

.product-item {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.product-item span {
    margin-right: 10px;
}

.product-code {
    font-weight: bold;
}

.add-product-form input[type="text"],
.add-product-form input[type="submit"] {
    margin-bottom: 10px;
}

.add-product-form input[type="text"] {
    width: calc(50% - 5px);
    padding: 5px;
}

.add-product-form input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
}

.add-product-form input[type="submit"]:hover {
    background-color: #0056b3;
}
    
    </style>
</head>
<body>
    <div class="container">
        <h2>Product Details</h2>
        <div class="product-list">
            <%
                ArrayList<ProductBean> al = (ArrayList<ProductBean>) request.getAttribute("qlist");
                Iterator<ProductBean> it = al.iterator();
                while(it.hasNext()){
                    ProductBean pb = it.next();
            %>
            <div class="product-item">
                <span class="product-code"><%= pb.getCode() %></span>
                <span class="product-name"><%= pb.getName() %></span>
                <span class="product-price">Rs - <%= pb.getPrice() %></span>
                <span class="product-quantity">Quantity: <%= pb.getQty() %></span>
            </div>
            <%
                }
            %>
        </div>
        <h2>Add Quantity </h2>
        <form action="Ats" method="post" class="add-product-form">
            <input type="text" name="pcode" placeholder="Product Code"><br>
            <input type="text" name="qty" placeholder="Quantity"><br>
            <input type="submit" value="Add">
        </form>
    </div>
</body>
</html>
