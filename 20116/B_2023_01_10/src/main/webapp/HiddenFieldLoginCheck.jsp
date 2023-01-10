<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hidden Field 방식을 이용한 세션 관리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String grade; //admin, member, guest 
		String grade_name;  // 관리자, 회원, 손님
	%>
	
	<%
		if(id==null || password==null || id.trim().equals("") || password.trim().equals("")){
			grade="guest";
			grade_name = "손님";
			id="";
			password="";
		%>
		<h3>[<%=grade_name %>]으로 접속하셨습니다.</h3>
		<%
		}else if(id.trim().equals("admin")){
			grade = "admin";
			grade_name = "관리자";
		%>
		<h3>[<%=id %>]님은 [<%=grade_name %>] 권한으로 접속하셨습니다.</h3>
		<%
		}else {
			grade="member";
			grade_name="회원";
		%>
		<h3>[<%=id %>]님은 [<%=grade_name %>] 권한으로 접속하셨습니다.</h3>
		<%} %>
		
		<hr>
		
		
		
		<form action=HtiddenFieldMenu.jsp method="post">
			<input type="hidden" name="id" value="<%= id%>">
			<input type="hidden" name="password" value="<%= password%>">
			<input type="hidden" name="grade" value="<%= grade%>">
			<input type="hidden" name="grade_name" value="<%= grade_name%>">
			<input type="submit" value="사용 가능 메뉴 확인">
		</form>
</body>
</html>