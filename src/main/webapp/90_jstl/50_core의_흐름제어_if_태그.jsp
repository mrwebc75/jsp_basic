<%@page import="jstl.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	Member member = new Member("둘리",7);
	pageContext.setAttribute("member", member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>흐름제어 if태그</h1>
	
	<!-- 이름이 또치가 아니면 "또치가 아니군요~!" 라고 출력 -->
	<c:if test="${member.name ne '또치'}">
		<h2>또치가 아니군요~!</h2>
	</c:if>
	<c:if test="${member.name != '또치'}">
		<h2>또치가 아니군요~!</h2>
	</c:if>
	
	
	<!-- 이름이 둘리이면 "둘리님으로 신분이 확인되었습니다." 라고 출력 -->
	<c:if test="${member.name eq '둘리'}">
		<h2>"둘리님으로 신분이 확인되었습니다."</h2>
	</c:if>
	<c:if test="${member.name == '둘리'}">
		<h2>"둘리님으로 신분이 확인되었습니다."</h2>
	</c:if>
	
	<!-- c:set을 이용하여 member 객체의 이름과 나이를 각각 name, age 변수에 저장후 출력하시오 -->
	<c:set var="name" value="${member.name}" />
	<c:set var="age" value="${member.age}" />
	<ul>
		<li>이름 : ${name}</li>
		<li>나이 : ${age}</li>
	</ul>
</body>
</html>


















