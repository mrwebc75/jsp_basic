<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session.getAttribute()리턴타입이 Object 이므로 형변환 필수
	String id = String.valueOf(session.getAttribute("id"));
	String pwd = String.valueOf(session.getAttribute("pwd"));
	String name = (String)session.getAttribute("name");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>이전 페이지에서 세션에 저장한 데이터 출력</h1>
	
	<!-- JSESSIONID의 값 02015C590107DE8576180E7281196BCB -->
	<h2>세션ID : <%=session.getId() %></h2>
	
	<ol>
		<li>id : <%=id%></li>
		<li>pwd : <%=pwd%></li>
		<li>name : <%=name%></li>
	</ol>
</body>
</html>












