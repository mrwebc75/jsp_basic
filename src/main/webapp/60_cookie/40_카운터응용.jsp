<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int count = 0;

	Cookie[] cookies= request.getCookies();
	if(cookies!=null){
	  for(Cookie c : cookies){
	    if(c.getName().equals("count")){
	      count = Integer.valueOf(c.getValue());
	    }
	      count++;//카운트 변수 1 증가
	      break;
	  }//for
	}//if
	
	
	//Cookie cookie = new Cookie("count", String.valueOf(count));
	Cookie cookie = new Cookie("count", count+"");
	cookie.setMaxAge(1*60*60*24*365);
	response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>페이지 조회 횟수 : <%=count%>회</h1>
</body>
</html>