<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인되었습니다.</h3>
	현재 접속된 아이디 : <%= session.getAttribute("ID") %><br>
	현재 세션 아이디 : <%= session.getId() %><br>
	
	<table border="1">
		<tr>
			<td>
				<form action="SessionLogin.jsp">
					<input type="submit" value="첫 화면으로">
				</form>
			</td>
			<td>
				<form action="SessionExit.jsp">
					<input type="submit" value="로그아웃">
				</form>
			</td>
		</tr>
	</table>
	 
	첫 화면      로그아웃
</body>
</html>