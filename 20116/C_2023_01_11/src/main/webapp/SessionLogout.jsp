<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그아웃되었습니다.</h3>
	다시 로그인하시려면 
	<%
		pageContext.include("/SessionLogin.jsp");
	%>
	<form action="SessionLogin.jsp" method="post">
		<input type="submit" value="첫 화면으로">
	</form>
</body>
</html>