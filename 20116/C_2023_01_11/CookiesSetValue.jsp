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
		Cookie cookie = new Cookie("MyCookie", "MyCookie'sValue"); // (Cookie 이름, 값)
		response.addCookie(cookie);
	%>
	<h3>Cookie 생성 완료</h3>
	<h3>생성된 쿠키 구성 요소 출력</h3>
	
	쿠키 이름 : <%= cookie.getName() %> <br>
	쿠키 값 : <%= cookie.getValue() %> <br>
	
	
	
	<form action="CookieValueChange.jsp" method="post">
		<input type="submit" value="쿠키 확인 페이지">
	</form>
</body>
</html>