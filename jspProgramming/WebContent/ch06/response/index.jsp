<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>20150817</title>
	</head>
	
	<body>
		<h4>[리다이렉트]</h4>
		<a href="a.jsp">a.jsp</a>
		<h4>[포워드]</h4>
		<a href="c.jsp">c.jsp</a>
		
		
		<h4>[데이터전달]</h4>
		<ul>
			<li><a href="e.jsp?username=javaLee">e.jsp(redirect)</a></li>
			<li><a href="g.jsp?username=javaLee">g.jsp(forward)</a></li>
		</ul>
		
		<h4>[책 예제 실습]</h4>
		<a href="page_control.jsp">page_control.jsp</a>
		
		<h4>[캐싱 없애기]</h4>
		<a href="no_cache.jsp">no_cache.jsp</a>
		
	</body>
</html>