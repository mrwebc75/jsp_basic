<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String checked = "";
	String userid = "";
	
	Cookie[] cookies = request.getCookies();
	
	//브라우저로부터 얻어낸 쿠키배열에서 "userid" 항목 검사
	for(Cookie c : cookies){
	  String cName = c.getName();
	  if(cName.equals("userid")){
	    checked = "checked";
	    userid = c.getValue();
	    break;
	  }
	}
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	
	<!-- http://localhost:8090/jsp_basic/80_login/login -->
	<form action="./login" method="post">
		<fieldset>
			<legend>정보입력</legend>
			<ul>
				<li>
					<label for="userid">아이디</label>
					<input type="text" id="userid" name="userid" value="<%=userid%>" autocomplete="off" />
				</li>
				<li>
					<label for="userpw">비밀번호</label>
					<input type="password" id="userpw" name="userpw" />
				</li>
				<li>
					<label for="idsave">아이디저장</label>
					<input type="checkbox" id="idsave" name="idsave" <%=checked%> value="1">
				</li>
			</ul>
		</fieldset>
		<p style="margin-top:15px;">
			<button type="submit">확인</button>
			<button type="reset">취소</button>
		</p>
	</form>
</body>
</html>








