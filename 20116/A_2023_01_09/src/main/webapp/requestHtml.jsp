<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
	%>
	아이디 : <%= id %> <br>
	이름 : <%= name %> <br>
	암호 : <%= password %> <br>
	이메일 : <%= email %> <br>
	성별 : <%= gender %> <br>
	휴대전화 : <%= phone %> <br>
	생년월일 : <%= year %>-<%= month %>-<%= day %>
</body>
</html>