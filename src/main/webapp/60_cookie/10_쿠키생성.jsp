<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 쿠키생성 - key와 value의 형식, 문자데이터만 저장 가능
	Cookie cookie = new Cookie("id","dokdo");

	//2. 유효기간 설정
	cookie.setMaxAge(1*60*60*5);//1초단위-5시간
	
	//cookie.setPath("/company");

	//3. 클라이언트에 쿠키 전송
	response.addCookie(cookie);
	
	//4. 쿠키생성과 전송을 한번에 처리
	response.addCookie(new Cookie("distance","87K"));
	
	response.addCookie(new Cookie("nickname","강치"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>쿠키설정</h1>
	
	<p>
		<a href="20_쿠키확인.jsp">쿠키 확인하기</a>
	</p>
</body>
</html>