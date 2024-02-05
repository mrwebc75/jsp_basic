<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청정보에 대한 한글인코딩 설정
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>URL Rewrite 방식의 상태유지 기법</h1>
	
	<h2>성별을 입력해 주세요</h2>
	
	<form action="./question_03.jsp" method="post">
	
	<!-- 이전 페이지에서 보내온 값에 대한 상태유지 -->
	<input type="hidden" name="username" value="<%=request.getParameter("username")%>" />
	<input type="hidden" name="email" value="<%=request.getParameter("email")%>" />
	<input type="hidden" name="phone" value="<%=request.getParameter("phone")%>" />
	
	
		<fieldset>
			<legend>정보입력란</legend>
			
			<ol>
				<li>
					<label for="gender">성별</label>
					<input type="radio" id="gender" name="gender" value="1" checked /> 남성
					<input type="radio" name="gender" value="0" /> 여성
				</li>
			</ol>
		</fieldset>
		<button>다음단계</button>
	</form>
</body>
</html>