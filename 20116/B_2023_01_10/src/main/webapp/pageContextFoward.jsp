<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 내장객체의 포워딩 예제</title>
</head>
<body>
	포워딩 수행 전 메시지 <br>
	<%out.print("세명 <br>"); %>
	<%out.print("컴퓨터 <br>"); %>
	<%out.print("고등학교 <br>"); %>
	
	포워딩 사용 <br>
	<%
		pageContext.forward("pagecontextFowarded.jsp");
	%>
	
	포워딩 수행 후 메시지 <br>
	<%out.print("세명 <br>"); %>
	<%out.print("컴퓨터 <br>"); %>
	<%out.print("고등학교 <br>"); %>
</body>
</html>