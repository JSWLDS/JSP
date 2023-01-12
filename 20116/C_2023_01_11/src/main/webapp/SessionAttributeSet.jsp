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
		String rememberId = request.getParameter("rememberId");
		session.setAttribute("ID", request.getParameter("id"));
		
		response.sendRedirect("http://localhost:8080/C_2023_01_11/SessionCheck.jsp");
	%>
</body>
</html>