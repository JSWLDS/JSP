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
		String grade = request.getParameter("grade"); //admin, member, guest 
		String grade_name = request.getParameter("grade_name");  // 관리자, 회원, 손님
	%>
	<h3>[<%= id %>(<%=grade_name %>)]님이 접속 중 입니다.<br>
	사용 가능  메뉴입니다.</h3> 
	<hr>
	
	<%
		if(grade.equals("admin")){ %>
			<input type="button" value="사이트 관리">
			<input type="button" value="회원 관리">
			<input type="button" value="자유 게시판">
			<input type="button" value="회원 게시판">
	<% 
		}else if(grade.equals("member")){
	%>
			<input type="button" value="자유 게시판">
			<input type="button" value="회원 게시판">
	<%
		}else{%>
		
			<input type="button" value="자유 게시판">
		<%}%>
</body>
</html>
