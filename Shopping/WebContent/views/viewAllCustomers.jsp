<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, tr, th, td {
	border: 1px solid black;
	width: 60%;
	text-align: center;
}
</style>
</head> 
<body style="background-image: url('https://cdn3.vectorstock.com/i/1000x1000/13/67/online-shopping-vector-21361367.jpg');background-repeat:no-repeat; background-size:100%; ">
	<div  style="padding-left: 20cm; padding-top: 1cm">
	<table>
		<caption><font size="6">Customers</font></caption>
		<tr>
			<th>Customer ID</th>
			<th>Balance</th>
			<th>Password</th>
		</tr>
		<c:forEach var="s" items="${list}">
			<tr>
			<td>	<c:out value="${s.getId() }"></c:out>	</td>
			<td>	<c:out value="${s.getBalance()}"></c:out>	</td>
			<td>	<c:out value="${s.getPassword()}"></c:out></td>
		</tr>
			</c:forEach>
		</table>
</div>
</body>
</html>