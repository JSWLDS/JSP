<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie 값 변경 예제</title>
</head>
<body>

	<h3>MyCookie 값 확인</h3>
	 <%
	 	Cookie [] cookies = request.getCookies();
	 	if(cookies != null && cookies.length>0){
	 		for(int i=0; i<cookies.length; i++){
	 			if(cookies[i].getName().equals("MyCookie")){ %>
	 				쿠키 이름 : <%=cookies[i].getName() %>
	 				쿠키 값: <%=cookies[i].getValue() %>
	 				<h3>"MyCookie" 쿠키의 값 변경</h3>
	 				
	 				<%
	 					cookies[i].setValue("MyCookies's_value_was_changed.");
	 					response.addCookie(cookies[i]);
	 				%>
	 				<h3>변경 완료</h3>
	 			<%		
	 			}
	 		}
	 	}
	 %>
	<form action="CookieValueCheck.jsp" method="post">
		<input type="submit" value="쿠키 변경 확인">
	</form>
</body>
</html>