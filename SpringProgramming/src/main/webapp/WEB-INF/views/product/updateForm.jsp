<%@ page contentType="text/html; charset=UTF-8"%>


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
		<form id="modifyForm" name="modifyForm" method="POST" action="update">
			<span class="title">번호 </span>:
			<span class="content">${ product.no}</span>
			<input type="hidden" name="no" value="${ product.no}"/>
			<br/>
			
			<span class="title">이름 </span>:
			<input id="name" name ="name" type="text" value="${ product.name}"/><br/>
			
			<span class="title">가격 </span>:
			<input id="price"  name="price" type="text" value="${ product.price}"><br/>
			
			<span class="title">수량</span>:
			<input id="amount" name ="amount" type="text" value="${ product.amount}"><br/>
			
			<span class="title">종류</span>
			<span class="content">${ product.kind}</span><br/>
			
			<span class="title">설명</span>
			<textarea id="content"  name ="content" rows="6" cols="30">${ product.content}
			</textarea>
			</form>
			
			
			<div id="buttonGroup">	
				<a href="javascript:sendData()" >
				[수정]</a>
				
				<a href="detail?productNo=${ product.no}">
				[취소]</a>
			
			</div>
			
			
			
		
		
	</body>
</html>