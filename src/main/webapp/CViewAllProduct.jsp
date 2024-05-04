<%@page import="java.util.Iterator"%>
<%@page import="com.onlineproductstore.admin.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlineproductstore.customer.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
body{
margin: 0;
padding: 0;
background-image: url("https://media.licdn.com/dms/image/C4E12AQEzzJmzSJse7w/article-cover_image-shrink_720_1280/0/1639666564327?e=2147483647&v=beta&t=d42rnjMMB41HdFKNXzm8YFzAJbDT4wbGxJVWRCxyYO4");
background-size: cover;
font-family: Arial, sans-serif;
}
.container {
margin: 10px auto;
padding: 20px;
background-color: rgba(255, 255, 255, 0.7);
border-radius: 5px;
box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.user-info {
margin-bottom: 20px;
font-weight: bold;
}

.product-table {
width: 100%;
border-collapse: collapse; 
}

.product-table th,
.product-table td {
border: 1px solid #ccc;
padding: 10px;
border-radius: 5px;
background-color: #fff;
}

.product-code {
font-weight: bold;
}

.product-actions {
text-align: center;
}

.edit-link, .delete-link {
text-decoration: none;
color: #007bff;
}

.edit-link:hover, .delete-link:hover {
text-decoration: underline;
}

.no-product {
font-weight: bold;
color: red;
}

.logout-link {
display: block;
margin-top: 20px;
text-decoration: none;
color: #007bff;
}

.logout-link:hover {
text-decoration: underline;
}
</style>
</head>
<body>
<div class="container">
    <% 
    CustomerBean cb = (CustomerBean)session.getAttribute("cbean");
    ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("clist");
    out.println("<div class='user-info'>User: " + cb.getfName() + "</div>");
    if(al.size() == 0) {
        out.println("<div class='no-product'>Product not Available!!!</div>");
    } else {
    %>
    <table class="product-table">
        <thead>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
            Iterator<ProductBean> it = al.iterator();
            while(it.hasNext()){
                ProductBean pb = (ProductBean)it.next();
            %>
            <tr>
                <td><%= pb.getCode() %></td>
                <td><%= pb.getName() %></td>
                <td><%= pb.getPrice() %></td>
                <td><%= pb.getQty() %></td>
                <td>
                    <a href="Add?pcode=<%= pb.getCode() %>" class="edit-link">Add to cart </a>
                    |<a href="show" class="delete-link"> View Cart</a>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <% } %>
    <a href="logout" class="logout-link">Logout</a>
</div>
</body>
</html>
