<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//이전페이지에서 보낸 데이터를 utf-8방식(2바이트) 방식으로 받게 하겠다.
	request.setCharacterEncoding("utf-8");//한글깨짐방지코드
	
	String username = request.getParameter("username");
	
	int birth = 1988;
	
	//형변환시 오류방지코드
	String birth_ = request.getParameter("bith");
	if(birth_!=null&&birth_!=""){
	  birth = Integer.parseInt(birth_);
	}
	
	String gender = request.getParameter("gender");
	//if 구문으로 판별하여 "남성","여성" 값을 gender 변수에 재할당 하시오.
	if(gender.equals("0")){
	  gender = "여성";
	}else{
	  gender = "남성";
	}
	
	
	//취미데이터 (배열)
	String[] hobby = request.getParameterValues("hobby");//{"게임","노래","쇼핑","그림"}
	String hobbyList = "";
	
	//방법1
	//hobbyList = hobby[0] + ", " + hobby[1] + ", " + hobby[2] + ", " + hobby[3];
	
	//방법2
	//hobbyList = Arrays.toString(hobby);//간단하게 배열원소를 문자열로 출력
	
	//방법3 - 아무것도 체크하지 않으면 null
	if(hobby!=null){
	  for(int i=0;i<hobby.length;i++){
	    //콤마처리
	    if(i<hobby.length-1){
	      hobbyList += hobby[i] + ", ";
	    }else{
	      hobbyList += hobby[i];
	    }
	  }
	}else{
	  hobbyList = "취미준비중";
	}
	
	
	String intro = request.getParameter("intro");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>전달받은 정보</h1>
	
	<h2>
		encType(인코딩타입-URL형식) : <%=request.getContentType()%> <br /><br />
		
		데이터의 크기 : <%=request.getContentLength() %>
	</h2>
	
	<ul>
		<li>이름 : <%=username%></li>
		<li>출생년도 : <%=birth%></li>
		<li>성별 : <%=gender%></li>
		<li>취미 : <%=hobbyList%></li>
		<li>소개글 : <%=intro%></li>
	</ul>
</body>
</html>