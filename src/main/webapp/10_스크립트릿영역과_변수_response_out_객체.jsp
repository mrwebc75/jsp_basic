<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	1. pageEncoding="utf-8" 구문은 생략가능하다.
	2. 톰캣(서블릿컨테이너)은 JSP 페이지를 분석하는 과정에서 어떤 인코딩을 이용해서 코드를 작성했는지 검사
	3. pageEncoding 속성이 없다면, charset 속성에 지정한 값을 이용한다.
 -->    
    
<!-- HTML 소스보기코드에서 공백문자라인 제거 -->    
<%@ page trimDirectiveWhitespaces = "true" %>

<%
	//응답결과를 캐시할 것인가에 대한 설정
	response.setHeader("Pragma","No-cache"); 
	response.setHeader("Cache-Control","no-cache");
	response.addHeader("Cache-Control","no-store"); 
	response.setDateHeader("Expires",1L); 
%>
    
<%
	// , /* */
	
	/*
		여기는 스크립트릿 영역
		
		1. 지역변수선언, 제어문(조건문, 반복문) 등의 코드는 사용가능함
		2. 여기에서 선언된 변수는 자동으로 만들어지는 _jspService() 함수의 지역변수로 선언이 된다.
		3. 여기에서는 함수를 선언할 수 없음. 
		4. 만약 선언하게 되면 함수안에서 함수를 선언한 것이기 때문에 에러발생
	*/
%>    

<%
	int dokdo = 91;
	String name = "동도와 서도";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>독도</h1>
	
	<!-- 
		* 표현식은 변수를 출력하거나 메소드의 결과값을 브라우저에 출력함
		* 표현식으로 출력시 세미콜론(;)은 표기하지 않는다.
		  서블릿으로 변환할 때 자동으로 붙여진다. 
	-->
	<h2>1. 주요도서 : <%=name%></h2>
	
	<!-- out 내장객체를 통해 브라우저에 출력 가능 -->
	<h2>2. 독도 부속도서 : <% out.println(dokdo); %>개의 섬</h2>
</body>
</html>








