<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 생성 예제</title>
</head>
<body>
	<h3>생성된 CookieTest 쿠키를 확인</h3>
	<%
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null && cookies.length > 0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("CookieTest")){
					%>
					쿠키 이름 : <%= cookies[i].getName() %> <br>
					쿠키 값 : <%=cookies[i].getValue() %> <br>
					쿠키 유효시간 : <%=cookies[i].getMaxAge() %> <br>
					<%= cookies[i].getComment() %> <br>
				<% 
				}
			}
		}
				%>
</body>
</html>