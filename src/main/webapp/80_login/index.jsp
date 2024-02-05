<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";

	//session.setAttribute("id", "duly");	
	//id = String.valueOf(session.getAttribute("id"));
	if(session.getAttribute("id")==null){
	  response.sendRedirect("loginForm.jsp");
	}else{
	  id = String.valueOf(session.getAttribute("id"));
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>세션에 "id"를 가진 클라이언트만 볼 수 있는 페이지 입니다.</h1>
	<h2><%=id%>님 안녕하세요~!</h2>
	<hr />
	<h3><a href="./logout">로그아웃</a></h3>
</body>
</html>










