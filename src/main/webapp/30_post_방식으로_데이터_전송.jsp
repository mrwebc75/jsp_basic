<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>회원가입</h1>
	
	<form action="./30_post_방식으로_데이터_수신.jsp" method="post">
		<fieldset>
			<legend>정보입력</legend>
			
			<ul>
				<li>
					<label for="username">이름</label>
					<input type="text" id="username" name="username" value="아이유" />
				</li>
				<li>
					<label for="birth">출생년도</label>
					<input type="number" id="birth" name="birth" value="2002" />
				</li>
				<li>
					<label for="gender">성별</label>
					<input type="radio" id="gender" name="gender" value="1" />남성
					<input type="radio" name="gender" value="0" checked />여성
				</li>
				
				<li>
					<label for="hobby">취미</label>
					<input type="checkbox" id="hobby" name="hobby" value="게임" />게임
					<input type="checkbox" name="hobby" value="노래" checked />노래
					<input type="checkbox" name="hobby" value="쇼핑" checked />쇼핑
					<input type="checkbox" name="hobby" value="그림" />그림
				</li>
				
				<li>
					<label for="intro">소개글</label>
					<textarea id="intro" name="intro" cols="30" rows="10">안녕하세요, 둘리친구입니다.</textarea>
				</li>
			</ul>
		</fieldset>
		
		<p>
			<button type="submit">확인</button>
			<button type="reset">리셋</button>
		</p>
	</form>
</body>
</html>







