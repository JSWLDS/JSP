<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><b>1~10 까지 홀수 짝수 여부 출력</b></h3>
	<table border="1">
		<%
			String hol = "홀수 입니다";
			String jjack = "짝수 입니다";
			String result = "";
		%>
		<%for(int i=0; i<=10; i++){ %>
			<%if(i%2==0) {
				result = jjack;		
			} 
			else {
				result = hol;
			} %>
			<tr>
				<td><%= i %></td>
				<td><%= result%></td>
			</tr>
		<%} %>
	</table>
</body>
</html>