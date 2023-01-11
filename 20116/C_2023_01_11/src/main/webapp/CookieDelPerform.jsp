<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DelCookie 쿠키 값 확인</title>
</head>
<body>
	<h3>DelCokie 쿠키 값 확인</h3>
	 <%
	 	Cookie [] cookies = request.getCookies();
	 	if(cookies != null && cookies.length>0){
	 		for(int i=0; i<cookies.length; i++){
	 			if(cookies[i].getName().equals("DelCookie")){ %>
	 				쿠키 이름 : <%=cookies[i].getName() %>
	 				쿠키 값: <%=cookies[i].getValue() %>
	 				<h3>"DelCookie" 쿠키의 값 삭제</h3>
	 				
	 				<%
	 					cookies[i].setMaxAge(0);
	 					response.addCookie(cookies[i]);
	 				%>
	 				<h3>삭제 완료</h3>
	 			<%		
	 			}
	 		}
	 	}
	 %>
	<form action="CookieDelCheck.jsp" method="post">
		<input type="submit" value="쿠키 변경 확인">
	</form>
</body>
</html>