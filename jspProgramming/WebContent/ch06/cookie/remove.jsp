<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
	</head>
	
	<body>
		remove.jsp
		<hr/>
		<%
		String name1 = URLEncoder.encode("홍길동","UTF-8");
		System.out.println(name1);
		Cookie cookie1 = new Cookie("name1",name1);
		Cookie cookie2 = new Cookie("name2","");
		
		cookie1.setMaxAge(0);
		cookie2.setMaxAge(0);
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		%>
		쿠키를 삭제했습니다.
		
	</body>
</html>