<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	포워딩 수행 전 <br>
	<% out.print("세명컴퓨터고"); %>
	<jsp:forword page="ActionTadForwarded.jsp">
	</jsp:forword>
	
	포워딩 수행 후 <br>
	<% out.print(" 스마트보안솔루션과"); %>
</body>
</html>