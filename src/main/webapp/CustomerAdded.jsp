<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Registration</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
  }

  .message {
    margin-bottom: 20px;
    color: #333;
  }

  a {
    text-decoration: none;
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
  }

  a:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<div class="container">
  <h1>Registration Successful</h1>
  <div class="message">
    <% 
    String msg = (String)request.getAttribute("msg");
    out.println(msg);
    %>
  </div>
  <a href="AddCustomer.html">Continue</a><br>
  <a href="home.html">Login</a>
</div>
</body>
</html>
