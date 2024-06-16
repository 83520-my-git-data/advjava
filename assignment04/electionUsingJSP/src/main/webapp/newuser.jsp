<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center"><b><u>Welcome New User</u></b></h2>
	
	<br/>

	<form method="post" action="register.jsp">
		
		<table align="center">
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName"/></td>
			</tr>
			
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName"/></td>
			</tr>
			
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"/></td>
			</tr>
			

			
			<tr>
				<td>Birth Date</td>
				<td><input type="date" name="birth"/></td>
			</tr>
			
		
			<tr>
				<td>Password</td>
				<td><input type="text" name="passwd"/></td>
			</tr>
			
			<tr>
				<td align="center" colspan="2"><input type="submit" name="submit"/></td>
			</tr>
			
			
		</table>
	
	
	</form>
	

</body>
</html>