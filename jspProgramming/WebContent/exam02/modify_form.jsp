<%@page import="dto.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
long productNo = Integer.parseInt(request.getParameter("product_no"));
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
		#buttonGroup{
			
		}
	
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
	<script type="text/javascript">
		function sendData(){
			
			var name = document.querySelector("#name").value;
			var price = document.querySelector("#price").value;
			
			var amount = document.querySelector("#amount").value;
			
			var content = document.querySelector("#content").value;
			
			if(name.value == "" || price.value =="" || amount.value =="" || content.value =="" ){
				alert("안쓴거 있죠?!!! 쓰세요!!!!");
				return;
			}
			
			modifyForm.submit();
			
		}
	</script>
	</head>
	
	<body>
		<h4>게시물 보기</h4>
		<form id="modifyForm" name="modifyForm" method="POST" action="modify.jsp">
			<span class="title">번호 </span>:
			<span class="content"><%=product.getNo() %></span>
			<input type="hidden" name="no" value="<%=product.getNo() %>"/>
			<br/>
			
			<span class="title">이름 </span>:
			<input id="name" name ="name" type="text" value="<%=product.getName()%>"/><br/>
			
			<span class="title">가격 </span>:
			<input id="price"  name="price" type="text" value="<%=product.getPrice()%>"><br/>
			
			<span class="title">수량</span>:
			<input id="amount" name ="amount" type="text" value="<%=product.getAmount()%>"><br/>
			
			<span class="title">종류</span>
			<span class="content"><%=product.getKind() %></span><br/>
			
			<span class="title">설명</span>
			<textarea id="content"  name ="content" rows="6" cols="30"><%=product.getContent() %>
			</textarea>
			</form>
			
			
			<div id="buttonGroup">	
				<a href="javascript:sendData()" >
				[수정]</a>
				
				<a href="detail.jsp?product_no=<%=product.getNo()%>">
				[취소]</a>
			
			</div>
			
			
			
		
		
	</body>
</html>