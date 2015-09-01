<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:useBean 
	id="productService" 
	class="service.ProductService"
	scope="application"/>

<%
List<Product> list = productService.getPage(1,10);
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
	<style type="text/css">
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
			
			<%for(Product product : list){%>
			
			<tr>
				<td><%=product.getNo() %></td>
				<td><a href="detail.jsp?product_no=<%=product.getNo() %>"><%=product.getName()%></a></td>
				<td><%=product.getAmount()%></td>
				<td><%=product.getPrice()%></td>
				<td><%=product.getKind()%></td> 
				
			</tr>
			
			<%} %>
		</table>
		<div id="buttonGroup">
			<a href="write_form.jsp"><img src="../common/images/board/write.gif"/></a>
		</div>
		
	</body>
</html>