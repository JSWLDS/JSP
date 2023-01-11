<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Cookie 클래스를 사용하여 쿠키 생성</h3>
	<%
		Cookie cookie = new Cookie("CookieTest", "Cookie테스트"); // (Cookie 이름, 값)
		response.addCookie(cookie);
	%>
	<h3>Cookie 생성 완료</h3>
	<form action="CookieCheck.jsp" method="post">
		<input type="submit" value="쿠키 확인 페이지">
	</form>
</body>
</html>