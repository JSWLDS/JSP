<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 종료</title>
</head>
<body>
	<%
		if(session!= null) {
			session.invalidate();
			response.sendRedirect("http://localhost:8080/C_2023_01_11/SessionInvalidateResult.jsp");
		}
	%>
</body>
</html>