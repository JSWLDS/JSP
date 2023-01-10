<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=0; i<10; i++) out.print("정서원 ");
	%>
	<%
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");
	%>
	
	
	<h1>현재 시각은  <%= date.format(today) %> <%= time.format(today) %> 입니다. <br></h1>
	
	<%!
		String hello ="Hello";
		String world = "World";
		
		public int add (int a, int b){
			return a+b;
		}
	 %>
	 <% int num = add(2, 3); %>
	 <%= num %>번 반복합니다. <br>
	 <%
		for(int i=1; i<=num; i++){%>
		<%=hello%> <%=world%> <br>
		
		<% } %>
	 
	
	
</body>
</html>