<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>생성된 "cookietest" 쿠키를 확인</h3>
	<%
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null && cookies.length > 0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("MyCookie")){
					%>
					쿠키 이름 : <%= cookies[i].getName() %> <br>
					쿠키 값 : <%=cookies[i].getValue() %> <br>
				<% 
				}
			}
		}
				%>
</body>
</html>