<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	String cookieName = "";
	String cookieValue = "";
	
	//id 쿠키 출력
	//cookieName = cookies[0].getName();
	//cookieValue = cookies[0].getValue();
	
	//원하는 쿠키만 출력
	for(Cookie c : cookies){
	  if(c.getName().equals("id")){
	  	cookieName = c.getName();
	  	cookieValue = c.getValue();
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
	<h1>쿠키 출력</h1>
	
	<h2>
		쿠키명 : <%=cookieName%> <br />
		
		쿠키값 : <%=cookieValue %>
	</h2>
	
	<p>
		<a href="10_쿠키생성.jsp">쿠키 생성하기</a> <br />
		<a href="30_쿠키삭제.jsp">쿠키 삭제하기</a>
	</p>	
</body>
</html>









