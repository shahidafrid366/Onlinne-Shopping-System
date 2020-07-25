<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">			<!-- 	background image should come fully -->
<title>Insert title here</title>
<style type="text/css"> 

</style>
</head> 
<body style="background-image: url('https://cdn.pixabay.com/photo/2016/05/25/20/17/icon-1415760_1280.png');background-position: center; color:#000000; background-size: cover; height:100%;">
		<div align="center" style="padding-top : 60px;  padding-left: 1cm">
		
		<fieldset style="width: 350px; height: 450px; border-radius: 10px; border: solid 2px black;">
			<form action ="addToCart">
				<h2>Your Cart Bill</h2> <hr>
				<h2><input type="hidden" name="productName" value="${product.getProductName()}">Product Name : ${product.getProductName()}</h2>
				<h3><input type="hidden" name="productNo" value="${product.getProductNo()}">Product Id : ${product.getProductNo()}</h3>
				<h3><input type="hidden" name="productPrice" value="${product.getProductPrice()}">Price : ${product.getProductPrice()}</h3>
				<h3><input type="hidden" name="quantity" value="${product.getQuantity()}">Quantity : ${product.getQuantity()}</h3>
				<h3><input type="hidden" name="discount" value="${product.getDiscount()}">Discount : ${product.getDiscount()} %</h3>
				
				<c:set var="price" value="${product.getProductPrice()}"></c:set>
				<c:set var="quantity" value="${product.getQuantity()}"></c:set>
				<c:set var="discount" value="${product.getDiscount() / 100}"></c:set>
				<c:set var="grandTotal" value="${price * quantity}"></c:set>
				<c:set var="totalDiscount" value="${grandTotal * (discount)}"></c:set>
				<c:set var="payableAmount" value="${grandTotal - totalDiscount}"> </c:set>
				
				<h3><input type="hidden" name="grandTotal" value="${grandTotal}">Grand Total : ${grandTotal}</h3>
				<h3><input type="hidden" name="totalDiscount" value="${totalDiscount}">Total Discount : ${totalDiscount}</h3>
				<h3><input type="hidden" name="payableAmount" value="${payableAmount}">Payable Amount : ${payableAmount}</h3> 
				
				<input type="submit">
				
			</form>
		</fieldset></div>
</body>
</html>