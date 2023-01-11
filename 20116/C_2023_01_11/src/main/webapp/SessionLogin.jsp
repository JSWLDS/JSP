<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장객체를 이용한 로그인/로그아웃 구현 예제</title>
</head>
<body>
	<%
		if(session.getAttribute("ID")==null){
	%>
			<form action="CookieSessionSet.jsp" method="post">
				<h3>아이디와 비밀번호를 입력하십시오.</h3><hr>
				<table border="1">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인">
						</td>
					</tr>
				</table>
			</form>
		<% }else{%>
				<h3>[<%= session.getAttribute("ID") %>]님 환영합니다.</h3>
			<%}%>
		
		
		<form action="SessionCheck.jsp" method="post">
			<input type="submit" value="로그인 상태 확인">
		</form>
		
		<form action="SessionExit.jsp" method="post	">
			<input type="submit" value="로그아웃">
		</form>
		
		로그인 상태 확인  로그아웃
</body>
</html>