<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			body {
				font-size: small;
				color: white;
			}
			
			input {
				font-size: 12px;
			}
			
		</style>
	</head>
	
	<body>
		<form method="post" action="write">
			<table id="form_table">
				<h2>상품 입력</h2>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="text" name="amount"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price"/></td>
				</tr>
				<tr>
					<td>종류</td>
					<td><input type="text" name="kind"/></td>
				</tr>
				<tr>
					<td>설명</td>
					<td><textarea name="content" rows="5" cols="50"></textarea></td>
				</tr>
			</table>
			<input type="submit" value="글올리기"/>
			<input type="reset" value="다시작성"/>
		</form>
		
	</body>
</html>
