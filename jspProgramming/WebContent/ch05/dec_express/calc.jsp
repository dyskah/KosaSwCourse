<%@ page contentType="text/html; charset=UTF-8"%>

<%-- 선언문(jsp가 클래스로 변화될 때 필드와 메소드가 될 부분)
	jsp에서 작성하지않는다.
	필드는 공유하기 때문에  --%>
<%!
	//!가 있는곳은 필드와 메소드 밖에 못옴
	
	
	//필드
	int num1,num2; //필드는 자동으로 초기화
	int result;
	String op = "";
	
	//메소드
	public int calculator(){
		if(op.equals("+")){
			result = num1 + num2;
		}
		else if(op.equals("-")){
			result = num1 - num2;
			
		}
		else if(op.equals("*")){
			result = num1 * num2;
			
		}
		else if(op.equals("/")){
			result = num1 / num2;
			
		}
		return result;
	}

%>
<%-- 스크립 트릿(요청시마다 실행되는 코드) --%>
<%
	System.out.println("스크립 트릿");
	//웹페이지 요청이 post인 경우에만 수행, 즉 폼을 통해 전달된 것만 수행
	//초기 로딩시 오류 방지
	if(request.getMethod().equals("POST")){
		
		//문자열 형태로 전달된 인자들을 int로 변환함
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
	}
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	
	<title>20150814_계산기</title>
	</head>
	
	<body>
		<center>
			<h3>계산기</h3>
			<hr>
			<form name="form1" method="post">
				<input type="text" name="num1" width="200" size="5">
				<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
				</select>
				<input type="text" name="num2" width="200" size="5">
				<input type="submit" value="계산" name="B1">
				<input type="reset" value="다시입력" name="B2">
				
			</form>
			
			<%-- 표현식: 하나의 값을 출력하는 코드  --%>
		<hr>계산 결과:<%=calculator() %>
		</center>
	</body>
</html>