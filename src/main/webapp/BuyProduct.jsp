<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Placed</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
body {
      background-image: url("https://th.bing.com/th/id/OIP.Qq7G1SH5d86Z-wkNHbNpHgHaFw?w=900&h=700&rs=1&pid=ImgDetMain");
    background-size: cover;
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.7);
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.heading {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

.message {
    text-align: center;
    font-size: 18px;
    margin-top: 20px;
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
<% String msg = (String) request.getAttribute("msg");%>
<div class="container">
    <div class="heading">Order Placed</div>
    <div class="message">
        <p><strong>Thank you for your order!</strong></p>
        <p><%out.println(msg);%></p>
    </div>
     <div class="order-details">
       <input type='submit' value='Continue' class='buy-button' onclick="window.location.href='CustomerLogin.jsp';"><br>
       
    </div> 
</div>
</body>
</html>
