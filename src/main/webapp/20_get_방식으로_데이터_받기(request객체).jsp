<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 만약 브라우저 주소창에 20_get.jsp 이렇게만 입력하면 num 변수에 null 값이 할당된다.
		2. 만약 브라우저 주소창에 20_get.jsp?num= 이렇게만 입력하면 num 변수에 "" 빈문자열이 할당된다.
		3. request.getParameter()로 전달받은 데이터의 타입은 무조건 String 이다.
	*/

	String num_ = request.getParameter("num");//이전페이지에서 넘겨준 데이터를 요청

	int num = 7;//기본값 
	
	//유효성검사
	if(num_!=null && num_!=""){
		num = Integer.parseInt(num_);	  
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>get 방식으로 데이터 처리하기</h1>
	
	<h2><a href="/jsp_basic/20_get_방식으로_데이터_받기(request객체).jsp?num=10&name=duly">num 값 전달</a></h2>
	
	<section>
		<h2>사용자가 전달한 num 값 : <%=num%></h2>
		<h2>사용자이름 : ${param.name}</h2>
	</section>
</body>
</html>













