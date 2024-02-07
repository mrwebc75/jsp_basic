<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		내장객체의 공통메소드
		
		.setAttribute(key,value);
		.getAttribute(key);
		.removeAttribute(key);
	*/
	
	pageContext.setAttribute("msg","pageContext의 꿈은 이루어진다.");
	request.setAttribute("msg","request의 꿈은 이루어진다.");
	session.setAttribute("msg","session의 꿈은 이루어진다.");
	application.setAttribute("msg","application의 꿈은 이루어진다.");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>저장소를 이용한 EL 출력</h1>
	
	<h2>출력결과 : ${msg}</h2>
	
	<hr>
	
	<h2>저장소 영역별로 출력</h2>
	<p>각각의 저장소를 가리키는 한정사를 이용</p>
	
	<ol>
		<li>${pageScope.msg}</li>
		<li>${requestScope.msg}</li>
		<li>${sessionScope.msg}</li>
		<li>${applicationScope.msg}</li>
	</ol>
	
	<hr>
	
	<% int num = 10; %>
	
	<ul>
		<!-- 스크립트릿에서 선언한 변수는 EL에서 인식하지 못하므로 null값을 가진다. -->
		<li>${num}</li>
		<li>${num != null}</li>
		
		<!-- 
			EL에서 변수를 사용하여 출력하고 싶다.
			request객체에 a=10, b=20 으로 설정하여 
			a, b의 값을 출력하시오
		 -->
		<%
			request.setAttribute("a", 10);
			request.setAttribute("b", 20);
			
			request.setAttribute("data", null);
			request.setAttribute("name","");
		%>
		<li>${a}, ${b}</li>

		<!-- 
			empty seq 의미
			
			1. 텅빈 값인지 검사하는 empty 연산자는 true, false 리턴
			2. seq == null || seq.equals("") 와 같은 효과
			3. 자바의 str.isEmpty() 와 같은 효과
		 -->
		<li>${empty data ? "null" : data}</li>		
		<li>${empty name ? "빈문자열" : name}</li>
	</ul>
	
	<hr>
	
	<%
		String[] member = {"고길동", "둘리", "또치", "도우너", "마이콜", "희동이"};
		request.setAttribute("member", member);
	%>
	
	<h2>배열데이터</h2>
	<ol>
		<li>${member[0]}</li>
		<li>${member[1]}</li>
		<li>${member[2]}</li>
		<li>${member[3]}</li>
		<li>${member[4]}</li>
	</ol>
	
	<hr>
	
	<%
		Map<String, String> friends = new HashMap<String, String>();
		friends.put("duly","둘리");
		friends.put("hani", "하니");
		friends.put("micol", "마이콜");
		
		request.setAttribute("friends", friends);
	%>		

	<h2>맵데이터</h2>
	<ol>
		<li>${friends["duly"]}</li>
		<li>${friends.get("hani")}</li>
		<li>${friends["micol"]}</li>
	</ol>
</body>
</html>









