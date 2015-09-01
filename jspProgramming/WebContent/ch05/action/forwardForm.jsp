<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
String email = request.getParameter("email");
String id = request.getParameter("id");
String name = request.getParameter("name");
name = URLDecoder.decode(name, "UTF-8");
%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
	</head>
	
	<body>
		<form action="">
			ID: <%=id %><br/>
			Name: <%=name%><br/>
			e-mail:<%=email %><br/>
			
		</form>
		
	</body>
</html>