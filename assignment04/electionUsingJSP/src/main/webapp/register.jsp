<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="rb" class="com.sunbeam.beans.RegistrationBean" />
	
	
	<jsp:setProperty name="rb" property="*" />
	
	<jsp:setProperty name="rb" property="status" value="0" />
	
	<jsp:setProperty name="rb" property="role" value="voter" />
	
 ${ rb.registerUser() }
	
	<c:choose>
	
		<c:when test="${rb.count == 1}">

			Registration successful....
			<a href="index.jsp">Sign In</a>
			
		</c:when>
		
		<c:otherwise>
		
			Registration failed....
			<a href="newuser.jsp">Back</a>
			
		</c:otherwise>
		
	</c:choose>
	
	%>	
	

</body>
</html>