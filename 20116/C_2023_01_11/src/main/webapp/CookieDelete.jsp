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
		Cookie cookie = new Cookie("DelCookie", "Cookie_Delete"); // (Cookie 이름, 값)
		response.addCookie(cookie);
	%>
	<h3>Cookie 생성 완료</h3>
	쿠키 이름 : <%= cookie.getName() %> <br>
	쿠키 값 : <%= cookie.getValue() %> <br>
	<form action="CookieDelPerform.jsp" method="post">
		<input type="submit" value="쿠키 삭제 페이지">
	</form>
</body>
</html>