<%@page import="dto.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
int productNo = Integer.parseInt(request.getParameter("product_no"));
%>

<jsp:useBean 
	id="productService" 
	class="service.ProductService"
	scope="application"/>

<%
Product product = productService.getProduct(productNo);
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		
		
		span{
			display: inline-block;
			margin: 2px 10px;
		}
		span.title {
			border: 1px solid darkgray;
			background-color: lightgray;
			width: 70px;
			text-align: center;
			
	
		}
		pre {
			margin: 10px;
			border: 1px solid darkgray;
			padding: 10px;
			height: 100px;
			width: 300px;
			font-size: 12px;
		}
	</style>
	</head>
	
	<body>
		<h4>게시물 보기</h4>

		<span class="title">번호 </span>:
		<span class="content"><%=product.getNo() %></span><br/>
		
		<span class="title">이름 </span>:
		<span class="content"><%=product.getName() %></span><br/>
		
		<span class="title">가격 </span>:
		<span class="content"><%=product.getPrice() %></span><br/>
		
		<span class="title">수량 </span>:
		<span class="content"><%=product.getAmount() %></span><br/>
		
		<span class="title">종류 </span>:
		<span class="content"><%=product.getKind() %></span><br/>
		
		<span class="title">설명 </span>
		<pre><%=product.getContent() %></pre>
		
		<div id="buttonGroup">
			<a href="list.jsp">
			<img src="../common/images/board/list.gif"/></a>
		
			<a href="modify_form.jsp?product_no=<%=product.getNo()%>">
			<img src="../common/images/board/modify.gif"/></a>
			
			<a href="delete.jsp?product_no=<%=product.getNo()%>">
			<img src="../common/images/board/delete.gif"/></a>
		
		</div>
		
	</body>
</html>