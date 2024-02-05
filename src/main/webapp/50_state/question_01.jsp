<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>URL Rewrite 방식의 상태유지 기법</h1>
	
	<h2>개인정보를 입력해 주세요</h2>
	
	<form action="./question_02.jsp" method="get">
		<fieldset>
			<legend>정보입력란</legend>
			
			<ol>
				<li>
					<label for="username">이름</label>
					<input type="text" id="username" name="username" value="duly" />
				</li>
				<li>
					<label for="email">이메일</label>
					<input type="text" id="email" name="email" value="duly@a.com" />
				</li>
				<li>
					<label for="phone">연락처</label>
					<input type="text" id="phone" name="phone" value="010-1234-5678" />
				</li>
			</ol>
		</fieldset>
		<button>다음단계</button>
	</form>
</body>
</html>






















