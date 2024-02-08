<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<style type="text/css">
	a{display:block;margin-bottom:25px;}
</style>
</head>
<body>
	<h1>아래 URL에서 가져온 정보(클릭하세요)</h1>
	<p>
		<a href="http://localhost:8090/jsp_basic/90_jstl/30_표현언어로_사이트_URL정보_가져오기.jsp?name=둘리&likenum=777">30_표현언어로_사이트_URL정보_가져오기.jsp?name=둘리&likenum=777</a> <br>
		
		<a href="${pageContext.request.requestURL}?name=둘리&likenum=777">30_표현언어로_사이트_URL정보_가져오기.jsp?name=둘리&likenum=777</a> <br>
	</p>
	
	<h2>컨텍스트 출력</h2>
	<ol>
		<li>${pageContext.request.contextPath}</li>
		<li><%=request.getContextPath() %></li>
	</ol>
	
	<% 
		//URLDecoder.decode(값, "utf-8")
	%>
	
	<h2>URI 출력</h2>
	<ol>
		<li>${URLDecoder.decode(pageContext.request.requestURI, "utf-8")}</li>
		<li>컨텍스트부터 .jsp 까지 출력</li>
	</ol>
	
	
	<h2>URL 출력</h2>
	<ol>
		<li>${pageContext.request.requestURL}</li>
		<li>${URLDecoder.decode(pageContext.request.requestURL, "utf-8")}</li>
		<li>프로토콜부터 .jsp까지 출력</li>
	</ol>	
</body>
</html>










