<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//내장객체 session
	session.setAttribute("id", "dokdo");
	session.setAttribute("pwd", "87K");
	session.setAttribute("name", "독도");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>session에 데이터를 저장</h1>
	
	<p>
		서버가 자동으로 발행하는 쿠키를 세션이라고 한다. <br />
		브라우저의 JSESSIONID의 값은 서버의 메모리 주소를 나타낸다. <br />
		이 메모리 영역에 key:value 의 형태로 문자열 데이터를 저장해 활용한다.
	</p>
</body>
</html>