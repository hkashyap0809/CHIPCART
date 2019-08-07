<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> WELCOME TO CHIPCART</h1>
<div align="right">
<table>
<form:form modelAttribute="login" action="login">
<tr> <td> USERNAME : </td> <td> <form:input type="text" path="username" required="required" /> </td></tr>
<tr> <td> PASSWORD : </td> <td> <form:input type="password" path="password" required="required" /> </td> </tr>
<tr> <td> <input type="submit" value="LOGIN">
</form:form>
<br/><br/>
</table>
<table>
<tr><td>Not a member ? Register</td></tr> 

<form:form modelAttribute="signup" action="signup">
<tr> <td> NAME : </td> <td> <form:input type="text" path="customerName" required="required" /> </td> </tr>
<tr> <td> EMAIL-ID : </td> <td> <form:input type="email" path="emailId" required="required" /> </td> </tr>
<tr> <td> USERNAME : </td> <td> <form:input type="text" path="username" required="required" /> </td></tr>
<tr> <td> PASSWORD : </td> <td> <form:input type="password" path="password" required="required" /> </td> </tr>
<tr> <td> <input type="submit" value="SIGN-UP"></td></tr>
</form:form>
</table>
</div>




</body>
</html>