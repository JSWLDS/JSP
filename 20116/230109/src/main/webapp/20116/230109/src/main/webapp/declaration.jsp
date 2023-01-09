<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
		String hello ="Hello";
		String world = "World";
		
		public int add (int a, int b){
			return a+b;
		}
		public int sub (int a, int b){
			return a-b;
		}
		public int mul (int a, int b){
			return a*b;
		}
		public int div (int a, int b){
			return a/b;
		}
		
	 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% int num = add(2, 3); %>
	<%= num %>번 반복합니다. <br>
	<%
	  int add = add(2, 3);
	  int sub = sub(2, 3);
	  int mul = mul(2, 3);
	  int div = div(2, 3);
	 %>
	<%
	  for(int i=1; i<=num; i++) {
	%>
	  <%=hello%> <%=world%> <br>
	  <%=add %>
	  <%=sub %>
	  <%=mul %>
	  <%=div %>
		
		
		
		
		
	  <% } %>
</body>
</html>