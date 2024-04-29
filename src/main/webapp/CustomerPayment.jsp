<%@page import="java.util.Iterator"%>
<%@page import="com.onlineproductstoreadmin.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Receipt</title>
     <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
    <style >
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

h1 {
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f2f2f2;
}

.total {
    margin-top: 20px;
    text-align: right;
}

.total span {
    font-weight: bold;
}

.total-amount {
    color: #ff0000;
}

.payment-link {
    display: block;
    text-align: center;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 5px;
    margin-top: 20px;
}

.payment-link:hover {
    background-color: #0056b3;
}
    
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Receipt</h1>
        <table>
            <tr>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <%
                ArrayList<ProductBean> al = (ArrayList<ProductBean>) request.getAttribute("plist");
                Iterator<ProductBean> it = al.iterator();
                while(it.hasNext()){
                    ProductBean pb = it.next();
                    int qty = pb.getQty();
                    float price = pb.getPrice();
                    double total = (price*qty);
            %>
            <tr>
                <td><%= pb.getCode() %></td>
                <td><%= pb.getName() %></td>
                <td><%= pb.getPrice() %></td>
                <td><%= qty %></td>
                <td><%= total %></td>
            </tr>
            <%
                }
            %>
        </table>
        <div class="total">
            <span>Total Bill:</span>
            <span class="total-amount">
                <%
                    double grandTotal = 0;
                    it = al.iterator();
                    while(it.hasNext()){
                        ProductBean pb = it.next();
                        int qty = pb.getQty();
                        float price = pb.getPrice();
                        grandTotal += (price*qty);
                    }
                    out.print(grandTotal);
                %>
            </span>
        </div>
        <a href="Buy" class="payment-link">Proceed to Payment</a>
    </div>
</body>
</html>
