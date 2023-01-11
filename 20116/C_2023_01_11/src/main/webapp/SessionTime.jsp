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
	
	현재 세션 아이디 : [<%= session.getId() %>]
	현재 세션의 유효시간 설정 : <br>
	<%
		session.setMaxInactiveInterval(30);
	%>
	현재 세션 유효 시간 : [<%= session.getMaxInactiveInterval() %>초] <br>
</body>
</html>