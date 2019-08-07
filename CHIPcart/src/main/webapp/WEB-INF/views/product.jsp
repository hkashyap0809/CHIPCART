<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*" %>
	<%@ page import="com.sonar.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Catalog</title>
</head>
<body>
	PRODUCTS LISTED

	<table>
		
			<%List<Product> product = (ArrayList<Product>)session.getAttribute("productList");
			for(Product prod : product)
			{
				out.println("<tr><td>"+ prod.getProductName()+"</td><td>&Tab;"+ prod.getProductPrice()+"</td><td><a href="+"<core:url value='/add/${"+ prod.getProductId()+ "}'/>"+"Add to cart</td><tr>");
				
			}
			%>	
		
	</table>


</body>
</html>