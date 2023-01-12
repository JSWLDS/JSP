<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Logout.jsp" method="post">
		<table border="1">
			<tr>
				<td><%= request.getParameter("id") %>님 로그인을 환영합니다.</td>
			</tr>
			<tr>
				<td><input type="submit" value="로그아웃"></td>
			</tr>
		</table>
	</form>
</body>
</html>