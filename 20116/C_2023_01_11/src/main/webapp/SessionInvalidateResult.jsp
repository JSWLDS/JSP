<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 종료</title>
</head>
<body>
	<h3>세션 종료 테스트 페이지</h3>
	
	현재 접속 아이디 : [<%= session.getAttribute("ID") %>] <br>
	현재 접속 권한 : [<%= session.getAttribute("grade") %>] <br>
	현재 세션 아이디 : <%= session.getId() %>[] <br>
</body>
</html>