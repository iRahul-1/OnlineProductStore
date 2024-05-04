<%@page import="java.util.Iterator"%>
<%@page import="com.onlineproductstore.admin.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlineproductstore.customer.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
body {
    margin: 0;
    padding: 0;
    background-image: url("https://c0.wallpaperflare.com/preview/549/880/890/ecommerce-application-buy-card.jpg");
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
    border: 1px solid black;
}

.product-table th,
.product-table td {
    padding: 10px;
   border: 1px solid #000;
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

.buy-button {
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    border: 1px solid #000;
    border-radius: 5px;
    cursor: pointer;
    margin: 0 auto; 
    display: block; 
}


.buy-button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
    <% 
    ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("vlist");
    out.println("<div class='user-info'>Your Cart " + "</div>");
    if(al.size() == 0) {
        out.println("<div class='no-product'>Product not Available!!!</div>");
    } else {
    	out.println("<form action='payment' method='post'>");
        out.println("<table class='product-table'>");
        out.println("<thead>");
        out.println("<tr>");
        out.println("<th>Code</th>");
        out.println("<th>Name</th>");
        out.println("<th>Price</th>");
        out.println("<th>Quantity</th>");
        out.println("</tr>");
        out.println("</thead>");
        out.println("<tbody>");
        Iterator<ProductBean> it = al.iterator();
        while(it.hasNext()) {
            ProductBean pb = (ProductBean) it.next();
            out.println("<tr>");
            out.println("<td>" + pb.getCode() + "</td>");
            out.println("<td>" + pb.getName() + "</td>");
            out.println("<td>" + pb.getPrice() + "</td>");
            out.println("<td>" + pb.getQty() + "</td>");
            out.println("</tr>");
        }
        out.println("</tbody>");
        out.println("</table><br>");
        out.println("<input type='submit' value='Buy' class='buy-button'>");
        out.println("</form>");
    }
    %>
    <a href="logout" class="logout-link">Logout</a>
</div>
</body>
</html>
