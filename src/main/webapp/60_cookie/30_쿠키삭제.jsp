<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("id","");
	cookie.setMaxAge(0);//즉시만료
	response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	 <h1>쿠키가 삭제되었습니다.</h1>
	 
	<p>
		<a href="20_쿠키확인.jsp">쿠키 확인하기</a>
	</p>	 
</body>
</html>