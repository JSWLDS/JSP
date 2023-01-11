<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 속성 사용</title>
</head>
<body>
	<%
		session.setAttribute("ID", "testID");
		session.setAttribute("grade", "관리자");
	%>
	현재 접속 아이디 : [<%=session.getAttribute("ID") %>] <br>
	접속 권한 : [<%=session.getAttribute("grade")%>] <br>
	
	<h3>설정된 세션의 속성값 삭제</h3>
	
	<%
		session.removeAttribute("ID");
		session.removeAttribute("grade");
	%> 
	현재 접속 아이디 : [<%=session.getAttribute("ID") %>] <br>
	접속 권한 : [<%=session.getAttribute("grade")%>] <br>
</body>
</html>