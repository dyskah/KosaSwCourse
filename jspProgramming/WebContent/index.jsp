<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>jspProgramming</title>
	<style type="text/css">
		*{
			margin: 0px;
			padding: 0px;
		}
		body{
			height:100vh;
			width: 900px;
			margin: 0 auto; /* 중앙정렬효과 */
			background-color: #E6E6E6;
		}
		#page-wrapper {
			background-color: #FFFFFF;
			margin:20px 0px;
			height:800px;
			padding:10px 20px;
			}
	
		header {
			text-align:center;
			margin-bottom: 10px;
		}
		
		nav{
			border-top: 1px solid #C8C8C8;
			border-bottom: 1px solid #C8C8C8;
			padding:3px;
			display: flex;
			flex-direction:row;
			text-align: center;
			
		}
		.menu{
			display: inline-block;
			margin: 5px;
			width: 50px;
			flex: 1;
		}
		#content{
			height: 100%;
			display: flex;
			flex-direction:row;
			
		}
		
         
         aside{
            width: 250px;
            height: 700px;
            padding: 10px;
            border-right: 1px solid #C8C8C8;
            
         }
         
         section{
            height: 700px;
            flex:1;
         }
         
		footer {
			font-style: italic;
            height: 30px;
            border-top: 1px solid #C8C8C8;
         	text-align: right;
         }
         iframe{
         	border:0px solid white;
         	height: 600px;
         }
         #category{
         	height:680px;
         	font-size:100%;
         
         	flex-direction:column;
         	text-align:center;
            overflow-y: scroll;
            
         		
         }
         #category > a{
        		background-color:#99E6FF;
				display: block;
				width:100%;
				height:30px;
				margin-top:5px;
				margin-right:10px;
				line-height: 30px;
				color:white;	        
         }
         #category >a:hover{
         		background-color: #6799FF;
         
         }
        
	</style>
	</head>
	
	<body>
		<div id="page-wrapper">
			<header>
				<h1>JspProgramming</h1>
			</header>
			<nav id = "navigation">
				<div class="menu">Menu1</div>
				<div class="menu">Menu2</div>
				<div class="menu">Menu3</div>
				<div class="menu">Menu4</div>
				<div class="menu">Menu5</div>
			</nav>
			<div id="content">
				<aside>
					<div id="category">
						<p class="chapter">[CH04: 서블릿 ]</p>
						<a href="HelloWorldServlet1" target="iframe" >3.0 방식으로 등록</a>
						<a href="HelloWorldServlet2" target="iframe" >이전 방식으로 등록</a>
						<a href="HelloWorldServlet3" target="iframe" >load on startup</a>
						<a href="HelloWorldServlet4" target="iframe" >외부 정보 받기</a>
						<a href="ch04/service_get_post.jsp" target="iframe" >요청 방식별 처리</a>
						<a href="LoginServlet" target="iframe" >요청 처리 및 응답 보내기</a>
					
						<p class="chapter">[CH05: JSP 기초 문법]</p>
						<a href="ch05/comment.jsp" target="iframe" >주석</a>
						<a href="ch05/directives/index.jsp" target="iframe" >지시어</a>
						<a href="ch05/action/index.jsp" target="iframe" >표준액션</a>
						<a href="ch05/dec_express/scriptlet1.jsp" target="iframe" >스크립트릿1</a>
						<a href="ch05/dec_express/scriptlet2.jsp" target="iframe" >스크립트릿2</a>
						<a href="ch05/dec_express/calc.jsp" target="iframe" >선언문</a>
						
						<p class="chapter">[CH06: JSP 내장 객체]</p>
						<a href="ch06/builtin_object.jsp" target="iframe">JSP 내장객체 개요</a>
						<a href="ch06/request/index.jsp" target="iframe">request</a>
						<a href="ch06/response/index.jsp" target="iframe">response</a>
						<a href="ch06/cookie/index.jsp" target="iframe">cookie</a>
						<a href="ch06/session/index.jsp" target="iframe">session</a>
						<a href="ch06/application/index.jsp" target="iframe">application</a>
						<a href="ch06/cart/index.jsp" target="iframe">장바구니</a>
						<a href="ch06/twitter/index.jsp" target="iframe">twitter</a>
						
						<p class="chapter">[CH07: JSP 자바 빈즈]</p>
						<a href="ch07/dto.jsp" target="iframe">DTO 이용 방법</a>
						<a href="ch07/dto_auto_setting.jsp" target="iframe">DTO 자동 저장</a>
						<a href="ch07/bean_scope.jsp" target="iframe">빈의 사용 범위</a>
						<a href="ch07/database_form.jsp" target="iframe">데이터베이스 연동</a>
						<a href="ch07/dao.jsp" target="iframe">DAO 이용 방법</a>
						<a href="ch07/service.jsp" target="iframe">Service 이용 방법</a>
						
						<p class="chapter">[CH10: 표현 언어]</p>
						
						
						<p class="chapter">[CH11: JSTL]</p>
						<a href="ch11/forEach.jsp" target="iframe">&lt; c:forEach &gt;</a>
						
						
						<p class="chapter">[실습01 : 게시판]</p>
						<a href="exam01/list.jsp" target="iframe">게시판 목록</a>
						
						<p class="chapter">[실습02 : 상품 게시판]</p>
						<a href="exam02/list.jsp" target="iframe">게시판 목록</a>
						
						<p class="chapter">[실습03 : MVC 게시판]</p>
						<a href="mvc/board?action=list" target="iframe">게시판 목록</a>
						
					</div>
				</aside>
				<section>
					<iframe name="iframe" width="100%" height="100%"></iframe>
				</section>
			</div>
			<footer>
				kim na gyeong 
			</footer>
		</div>
	</body>
</html>