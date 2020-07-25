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
	padding-top: 180px;
	padding-left: 270px;
	}
	.d2
	{
	padding-left: 600px; 
	padding-bottom: 100px;
	}
	
</style>
</head>
<body style="background-image: url('https://cdn.pixabay.com/photo/2018/05/24/05/38/conversation-3425926_1280.jpg');" style="background-size: cover;">
	<h1>	Add <br> Quantity	</h1>	

	<div class=d2> 
	<form action="quantity">
		<table>
			<tr>	<td> <h2><font color="white">Enter the Quantity You Want :</font></h2></td> </tr>
			<tr>	<td> <input type="text" name="quantity" required="required"> </td></tr>
			
		</table><br>
		<input type="submit">
	</form>
	</div>
</body>
</html>