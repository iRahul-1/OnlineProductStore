<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="icon" href="https://www.kindpng.com/picc/m/714-7147296_digicollect-cart-icon-png-download-jet-com-walmart.png" type="image/png">
</head>
<body>
<%
  String msg = (String) request.getAttribute("msg");
  out.println(msg);
%>
<%@ include file="home.html" %>
</body>
</html>