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
		/* 메모리에만저장 */
		Cookie cookie1 = new Cookie("name1","JavaLee"); 
		response.addCookie(cookie1);

		
		/* 하드디스크에 저장 */
		Cookie cookie2 = new Cookie("name2","jong2");
		cookie2.setMaxAge(60*60);
		response.addCookie(cookie2);
		%>
		
		쿠키가 잘 저장 되었습니다.
		
	</body>
</html>

<!-- 쿠키는 html헤더부분에 실려간다

 -->