<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	
	<body>
		save.jsp
		<hr/>
		<%
		session.setAttribute("name1", "자바씌");
		session.setAttribute("name2", "jong2");
		%>
		
		세션에 잘 저장 되었습니다.
		
	</body>
</html>
