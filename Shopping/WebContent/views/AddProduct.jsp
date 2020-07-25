<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Insert title here</title>
<style>
	h1 
	{
	font-family:Georgia;
	color:"black";
	size:"10";
	align: "center";
	padding-left: 100px;
	} 
</style>

</head>
<body style="background-image: url('https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');" style="background-size: cover;">


<div style="padding-top: 130px;"> 
 <h1>Add Products</h1>
	<fieldset style="width: 380px; height: 250px; border-radius: 10px; border: solid 2px black;">
	<form action="addProduct">
	
	<table>  <br><br><br>
	
			<tr>	
					<td> <b>	Enter The Product Id: </b></td>
			 		<td><input type="text" name="productNo" required="required"></td>
			 </tr> 
			<tr>
				<td> <b>Enter The Product Name :</b></td>
				<td> <input type="text" name="productName" required="required"></td>
			 </tr>
			<tr>
				<td> <b> Enter The Product Price : </b></td>
				<td> <input type="text" name="productPrice" required="required"></td>
			</tr>
			<tr>
				<td><b>	Enter The Quantity :</b></td>
				<td> <input type="text" name="quantity" required="required"></td>
			 </tr>
			<tr>
				<td> <b>Enter The Discount :</b></td> 
				<td> <input type="text" name="discount" required="required"></td>
			</tr>
			
			</table><br>
		<center>	<input type="submit"> </center>	
	
			</form>
		</fieldset>
	</div> 

</body>
</html>	