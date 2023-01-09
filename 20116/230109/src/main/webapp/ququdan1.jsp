<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><b>구구단 출력</b></h3>
	<table border="1">
		<% for(int i=2; i<=9; i++) { %>
		<th><%= i %>단</th>
		<%} %>
		
		<% for(int i=1; i<=9; i++) { %>
			<tr>
			<% for(int j=2; j<=9; j++) { %>
				<td><%= j %>X<%= i %>=<%= i*j %></td>
			<%} %>
			</tr>
		<%} %>
	</table>
</body>
</html>