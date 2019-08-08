<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page import="java.util.*"%>
<%@ page import="com.sonar.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Catalog</title>
</head>
<body>

	<%!Login loginDetails;
	ArrayList<Product> productList;%>

	PRODUCTS LISTED

	<%
		loginDetails = (Login) session.getAttribute("loginDetails");
		out.println("<br/> <br/> HI " + loginDetails.getCustomerName()+"<br/> <br/>");
	%>

	<%
		productList = (ArrayList<Product>) session.getAttribute("productList");
	%>
<table>
	<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.productName}</td>
			<td>${product.productPrice}</td>
			<td><a href=<c:url value='/add/${product.productId}/${loginDetails.getCustomerId()}'/>>Add to cart </a></td>
		</tr>
	</c:forEach>
	
	<td><a href=<c:url value='/billing'/>> Proceed to Billing Details</a></td>
	</table>
	
	
</body>
</html>