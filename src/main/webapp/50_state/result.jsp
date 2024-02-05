<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//요청정보에 대한 한글인코딩 설정
	request.setCharacterEncoding("utf-8");

	//이전 페이지에서 넘어온 값을 변수에 할당
	String username = request.getParameter("username"); 
	String email = request.getParameter("email"); 
	String phone = request.getParameter("phone"); 
	
	String gender = request.getParameter("gender"); //0,1
	gender = (gender.equals("1")) ? "남성" : "여성";	
	
	String[] hobby = request.getParameterValues("hobby");
	
	
	String hobbyList = "";
	
	
	//이름 미입력시 처음페이지 question_01.jsp로 이동
	if(username==null || username.equals("")){
		response.sendRedirect("./question_01.jsp");	  
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>

<body>
	<h1>결과보기</h1>
	
	<ol>
		<li>이름 : <%=username%></li>		
		<li>이메일 : <%=email%></li>
		<li>연락처 : <%=phone%></li>
		<li>성별 : <%=gender%></li>
		<li>취미 : <%=Arrays.toString(hobby)%></li>
		<li>취미 : <%=hobbyList%></li>
	</ol>
</body>
</html>