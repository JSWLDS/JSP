<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 종료</title>
</head>
<body>

	<%
		session.setAttribute("ID", "testID");
		session.setAttribute("grade", "관리자");
	%>
	현재 접속 아이디 : [<%=session.getAttribute("ID") %>] <br>
	접속 권한 : [<%=session.getAttribute("grade")%>] <br>
	<form action="SessionInvalidatePerform.jsp" method="post">
		<input type="submit" value="세션 종료">
	</form>
	
</body>
</html>