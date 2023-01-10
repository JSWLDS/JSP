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
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	<%
		if(id==null || password==null || id.trim().equals("") || password.trim().equals("")){
			out.print("아이디와 비밀번호는 반드시 입력되어야 합니다. <br>");
		}else {
			%>
		로그인에 성공하였습니다. <br>
		[<%= id %>]님 환영합니다. <br>
		<a href="URLRewritingPasswordCheck.jsp?id=<%=id%>&password=<%=password%>">[비밀번호 확인]</a>
	<%}%>
</body>
</html>