<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<body style="background-image: url('https://cdn.pixabay.com/photo/2019/04/26/07/14/store-4156934_1280.png');" style="background-size: cover;">
	<div align="center" style="padding-top: 50px;"> 
			<font face="Georgia"; color="#FFFAFA" size="7" style="text-decoration:underline";><b>
				Welcome Customer 
				</b></font>
		</div>	

<div align="center" style="padding-top: 100px;"> 
		
			<form action="loginCustomer">
				<table>
					<tr>	
						<td> <b> Enter Customer Id : </b></td>
						<td> <input type="text" name="id" required="required"> </td>
						</tr>
					<tr>	
						<td> <b>Enter Customer Password : </b> </td>
						<td> <input type="text" name="password" required="required"></td>
					</tr>
			</tr>
				</table><br> 
					
				<input type="submit">
			</form>
		  
		</div>
</body>
</html>