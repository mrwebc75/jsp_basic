<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//방법1
	//session.removeAttribute("id");
	//session.removeAttribute("pwd");
	//session.removeAttribute("name");
	
	//방법2
	session.invalidate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>세션에 저장된 값 제거</h1>
</body>
</html>