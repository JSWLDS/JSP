<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String rememberInfo = null;
		String id = null;
		String password = null;
		
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("keep")){
					rememberInfo = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("id")) {
					id = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("password")) {
					password = cookies[i].getValue();
				}
				
			}
		}
	%>

	<form action="Logined.jsp" method="post">
		<h3>아이디와 비밀번호를 입력하십시오.</h3><hr>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="<%=(id == null ? "" : id)%>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" value="<%=(password == null ? "" : password)%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="rememberInfo"  value="keep"
				<%=(rememberInfo == "temp"?"":"checked=\"checked\"") %>>아이디/비밀번호 저장</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>

