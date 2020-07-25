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
	color:"white";
	size:"10";
	align: "center";
	padding-left: 100px;
	} 
	
	
</style>
</head>
<body style="background-image: url('https://mrmw.net/wp-content/uploads/2018/05/customer-centricity.png'); background-position:center; background-size: 100%; max-height:100%;">


<div style="padding-top: 130px;"> 
 <h1> <font color="white">Add Customer</font></h1>
	<fieldset style="width: 380px; height: 250px; border-radius: 10px; border: solid 2px white;">
	<form action="addCustomer">
		<table>  <br><br><br>
	
			<tr>	
					<td> <b><font color="white">Enter Customer Id :</font> </b></td>
					<td> <input type="text" name="id" required="required"> </td>
			</tr>		
		    <tr>
		    	<td> <b> <font color="white">Enter Customer Password : </font></b></td>
		    	<td> <input type="text" name="password" required="required"></td>
		    </tr>	
			<tr>
				<td><b> <font color="white">Enter Amount :</font></b></td>
				<td> <input type="text" name="balance" required="required"></td>
			</tr>
			</table><br>
		<center> <input type="submit"> </center>
	</form>
	</fieldset>
	</div>
</body>
</html>