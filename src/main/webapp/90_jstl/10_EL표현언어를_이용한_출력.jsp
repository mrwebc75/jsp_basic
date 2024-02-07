<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("nation", "대한민국");

	//String nation = "대한민국";
	String name = "duly";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>표현언어로 간단한 메세지 출력</h1>
	
	<h2>EL은 출력만 담당하기 때문에 if문, for문 같은 Statement(문)은 처리할 수 없다.</h2>
	
	<ul>
		<li>대한민국</li>
		<li><%="대한민국"%></li>
		<li><% out.print("대한민국"); %></li>
		<li>${nation}</li>
		<li>이름 : ${name}</li>
	</ul>
	
	<hr>

	<ol>
		<li>요청 URI(표현식) : <%=URLDecoder.decode(request.getRequestURI(), "utf-8") %></li>
		<li>요청 URI(EL) : ${URLDecoder.decode(pageContext.request.requestURI, "utf-8")}</li>
		<!-- pageContext 객체는 하나의 JSP 페이지가 생성될때 서블릿에 딱 하나 존재하는 내장객체이다.-->
	</ol>
	
	<hr>
	
	<h2>사용가능한 데이터</h2>
	
	<ul>
		<li>정수형 : ${10}</li>
		<li>실수형 : ${7.7}</li>
		<li>문자열 : ${"둘리"}</li>
		<li>문자열 : ${'또치'}</li>
		<li>논리형 : ${true}</li>
		<li>논리형 : ${false}</li>
		<li>null : ${null} (아무것도 출력되지 않음)</li>
		<li></li>
		<li></li>
	</ul>
	
	<hr>
	
	<h2>EL 연산자</h2>	
	<ul>
		<li>${10+20}</li>
		<li>${0}</li>
		<li>${null+40} : 연산에서 null은 0으로 처리</li>
		<li>${"20"+40} : 문자열 20이 숫자20으로 자동형변환</li>
		<li>${10/3} : 나눗셈시 무조건 double 타입으로 변환</li>
		
		<li>${10/2}</li>
		<li>${10 div 2}</li>
		
		<li>${10%3}</li>
		<li>${10 mod 3}</li>
		
		<li>${20>10}</li>
		<li>${20 gt 10}</li>
		
		<li>${30 >= 40}</li>
		<li>${30 ge 40}</li>
		
		<li>${50<60}</li>
		<li>${50 lt 60}</li>
		
		<li>${70<=50}</li>
		<li>${70 le 50}</li>
		
		<li>문자열비교 => ${"둘리"=="둘리"}</li>
		
		<!-- 삼항연산자의 형태 => (조건식) ? true일때의 값 : false일때의 값 -->
		<li>${ (70<=50) ? "값1" : "값2"}</li>		
		<li>${ 50<60 ? "참" : "거짓"}</li>
		
		<li>${ (70 eq 50) ? "값1" : "값2"}</li>		
		<li>${ 50 ne 60 ? "참" : "거짓"}</li>
		
		<li>${(10>5)&&(2>3)}</li>		
		<li>${(10>5) and (2>3)}</li>	
		
		<li>${(10>5)||(2>3)}</li>		
		<li>${(10>5) or (2>3)}</li>	
		

	</ul>
</body>
</html>
































