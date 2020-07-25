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
	width: 50%;
	text-align: center;
}
</style>
</head>
<body style="background-image: url('https://cdn3.vectorstock.com/i/1000x1000/13/67/online-shopping-vector-21361367.jpg');background-repeat:no-repeat; background-size:100%; ">
	<div  style="padding-left: 20cm; padding-top: 2cm">
	<table>
		<caption><font size="6">Cart Products</font></caption>
		<tr>
			<th>Customer ID</th>
			<th>Product No</th>
			<th>Quantity</th>
			<th>Grand Total</th>
			<th>Total Discount</th>
			<th>Payable</th>
		</tr>
		<c:forEach var="s" items="${list}">
			<tr>
			<td>	<c:out value="${s.getId() }"></c:out>	</td>
			<td>	<c:out value="${s.getProductNo()}"></c:out></td>
			<td>	<c:out value="${s.getQuantity()}"></c:out>	</td>
			<td>	<c:out value="${s.getGrandTotal()}"></c:out>	</td>
			<td>	<c:out value="${s.getTotalDiscount()}"></c:out>	</td>
			<td>	<c:out value="${s.getPayableAmount()}"></c:out>		</td>
		</tr>
			</c:forEach>
		</table>
	</div>
	
	
</body>
</html>