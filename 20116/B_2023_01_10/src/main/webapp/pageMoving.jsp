<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 이동</title>
</head>
<body>
	<h1>페이지 이동 방식을 지정합니다.</h1>
	 <%
	 	String move = request.getParameter("move");
	 	
	 	if(move == null) {
	 %>
	 이동 방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move"입니다. <br>
	 파라미터의 값은 각각 아래와 같이 지정합니다.
	 <hr>
	 리다이렉트 : "redirect"
	 포워드 : "forward"
	 인클루드 : "include"
	 <hr>
	<%}else if(move.equals("redirect")) {
			response.sendRedirect("http://localhost:8080/B_2023_01_10/pageMovingRedirect.jsp");
		}else if(move.equals("forward")) {
			pageContext.forward("pageMovi n0 gForward.jsp");
		}else if(move.equals("include")) {
			pageContext.include("pageMovingInclude .jsp");
		}
	%>
	 <h1>pageMoving.jsp 페이지의 마지막입니다.</h1>
</body>
</html>