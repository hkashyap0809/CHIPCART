<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Confirmation</title>
</head>
<body>
<%=session.getAttribute("loginDetails") %>
<br/>
<%=session.getAttribute("billingDetails") %>

</body>
</html>