<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL Rewriting 방식을 이용ㅎ나 세션 관리 예제</title>
</head>
<body>
	<%
		String id =request.getParameter("id");
		String password =request.getParameter("password");
	%>
	비밀번호 확인 페이지 입니다. <br>
	[<%= id %>]님의 비밀번호는 [<%=password %>] 입니다. <br>
</body>
</html>