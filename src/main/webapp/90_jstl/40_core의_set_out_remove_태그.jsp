<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="jstl.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	Member member = new Member("둘리", 7);
	request.setAttribute("member",member);
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

<%-- 
--%>
<c:set var="title" value="JSTL 사용법"  /> 

	<h1>${empty title ? '제목없음' : title}</h1>
	<h1><c:out value="${empty title ? '제목없음' : title}" /></h1>
	
	<div>
		<p> 
			Member의 값 표현 <br><br>
			
			1. 이름 : ${member.name} <br>
			2. 나이 : ${member.age }
		</p>
	</div>
	
	<hr>
	
	<%
		//크기가 10인 Member 타입의 배열변수 memberList를 선언하시오.
		Member[] memberList = new Member[10];
		
		//인덱스 0인 위치에 "둘리",12 를 데이터로 하는 Member 객체를 삽입하시오.
		memberList[0] = new Member("둘리",12);
		memberList[1] = new Member("또치",15);
		memberList[2] = new Member("마이콜",17);
		
		request.setAttribute("memberList", memberList);
	%>
	<div>
		<p> 
			memberList의 값 표현<br><br>
			
			인덱스가 1인 요소의 이름 : ${memberList[1].name}  <br>
			인덱스가 1인 요소의 나이 : ${memberList[1].age}
		</p>
	</div>
		
	<hr>
	
	<%
		Map<String, Member> friendsMap = new HashMap<String, Member>();
		friendsMap.put("duly", new Member("둘리", 7));
		friendsMap.put("hani", new Member("하니", 15));
		friendsMap.put("micol", new Member("마이콜", 19));
		
		pageContext.setAttribute("friendsMap", friendsMap);
	%>
	
	<%=friendsMap.get("hani").getName() %>
	
	<div>
		<p>
			Map 객체의 값 표현<br><br>
			
			hani 이름 : ${friendsMap.hani.name} <br>
			hani 나이 : ${friendsMap.hani.age} 
		</p>
	</div>		
	
	<hr>
	
	
	<h2>제목 : ${title}</h2>
	
	<c:remove var="title" />
	<h2>제목 : ${empty title ? "제목 삭제됨" : title}</h2>

</body>
</html>




