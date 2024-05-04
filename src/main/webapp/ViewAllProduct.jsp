<%@page import="java.util.Iterator"%>
<%@page import="com.onlineproductstore.admin.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlineproductstore.admin.AdminBean"%>
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
            background-image: url("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a2e8df46486507.58569eb2c05ce.gif");
            background-size: cover;
            font-family: Arial, sans-serif;
        }
.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  
     background-color: rgba(255, 255, 255, 0.7);
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.user-info {
    margin-bottom: 20px;
    font-weight: bold;
}

.product-item {
    margin-bottom: 10px;
    border: 1px solid #ccc;
    padding: 10px;
    border-radius: 5px;
    background-color: #fff;
}

.product-code {
    font-weight: bold;
}

.product-actions {
    float: right;
}

.edit-link, .delete-link {
    margin-left: 10px;
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
    AdminBean ab = (AdminBean)session.getAttribute("abean");
    ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("alist");
    out.println("<div class='user-info'>User: " + ab.getfName() + "</div>");
    if(al.size() == 0) {
        out.println("<div class='no-product'>Product not Available!!!</div>");
    } else {
        Iterator<ProductBean> it = al.iterator();
        while(it.hasNext()){
            ProductBean pb = (ProductBean)it.next();
            out.println("<div class='product-item'>" + 
                            "<span class='product-code'>" + pb.getCode()+" | " + "</span>" +
                            "<span class='product-name'>" + pb.getName()+" | " + "</span>" +
                            "<span class='product-price'>" + pb.getPrice()+" | " + "</span>" +
                            "<span class='product-quantity'>" + pb.getQty() + "</span>" +
                            "<span class='product-actions'>" +
                                "<a href='edit?pcode=" + pb.getCode() + "' class='edit-link'>Edit</a>" +
                                "<a href='delete?pcode=" + pb.getCode() + "' class='delete-link'>Delete</a>" +
                            "</span>" +
                        "</div>");
        }
    }
    %>
    <a href="logout" class="logout-link">Logout</a>
</div>
</body>
</html>
