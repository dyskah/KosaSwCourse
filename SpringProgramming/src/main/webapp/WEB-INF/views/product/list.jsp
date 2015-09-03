<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
	<style type="text/css">
		body{
			color:white;
		}
		h4{
			text-align: center;
			font-size: 150%;
		}
		
		table{
			width:100%;
			border-collapse: collapse; 
		} 
		table, th, td{
			text-align:center;
			border: 1px solid black;
		}
		th{
			background-color: olive; 
		}
		#buttonGroup{
			text-align: center;
			margin: 10px;
		}
		#buttonGroup a {
				display:inline-block;
				width: 70px;
				line-height: 30px;
				text-decoration: none;
				font-size: small;
				color: white;
				border: 1px solid darkgray;
				background-color: gray;
				font-weight: bold;
		}
			
		#buttonGroup a:hover {
				color: black;
				background-color: lightgray;
		}
		
	</style>
	</head>
	
	<body>
		<h4>&diam;&diam;재윤마트&diam;&diam;</h4>
		
		<table>
			<tr>
				<th style="width: 30px;">번호</th>
				<th style="width: 70px">이름</th>
				<th style="width: 40px">수량</th>
				<th style="width: 40px">가격</th>
				<th style="width: 90px">종류</th>
				
			</tr>
			
			<c:forEach var="product" items="${list }">
				<tr>
					<td>${product.no }</td>
					<td>${product.name}</td>
					<td>${product.amount}</td>
					<td>${product.price}</td>
					<td>${product.kind}</td> 
					
				</tr>
			</c:forEach>
			
			
		</table>
		<div id="buttonGroup">
			<a href="writeForm">글쓰기</a>
		</div>
		
	</body>
</html>