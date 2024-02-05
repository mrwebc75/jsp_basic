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
	
	<form action="./result.jsp" method="post">
	
	<!-- 이전 페이지에서 보내온 값에 대한 상태유지 -->
	<input type="hidden" name="username" value="<%=request.getParameter("username")%>" />
	<input type="hidden" name="email" value="<%=request.getParameter("email")%>" />
	<input type="hidden" name="phone" value="<%=request.getParameter("phone")%>" />
	<input type="hidden" name="gender" value="<%=request.getParameter("gender")%>" />
	
	
		<fieldset>
			<legend>취미입력</legend>
			
			<ol>
				<li>
					<label>
						<input type="checkbox" name="hobby" value="music"/> 음악감상
					</label>
				</li>
				<li>
					<label>
						<input type="checkbox" name="hobby" value="movie" /> 영화감상
					</label>
				</li>
				<li>
					<label>
						<input type="checkbox" name="hobby" value="photo" /> 사진감상
					</label>
				</li>
			</ol>
		</fieldset>
		<button>다음단계</button>
	</form>
</body>
</html>









