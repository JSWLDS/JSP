<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 내장 객체의 인클루드 예제</title>
</head>
<body>
	인클루딩 수행 전 메시지 <br>
	<%out.print("세명 <br>"); %>
	<%out.print("컴퓨터 <br>"); %>
	<%out.print("고등학교 <br>"); %>
	
	인클루딩 사용 <br>
	<%
		pageContext.include("pageContextIncluded.jsp");
	%>
	
	인클루딩 수행 후 메시지 <br>
	<%out.print("세명 <br>"); %>
	<%out.print("컴퓨터 <br>"); %>
	<%out.print("고등학교 <br>"); %>
</body>
</html>