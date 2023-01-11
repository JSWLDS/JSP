<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String cookieHeader = request.getHeader("Cookie");
	String cookiename="";
	String cookievalue="";
	
	Cookie cookie1 = new Cookie("param1", "test1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("param1", "test1");
	cookie2.setDomain("testcookie.com");
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("param1", "test1");
	cookie3.setDomain("www.testcookie.com");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("param1", "test1");
	cookie2.setDomain("www.testcookie.net");
	response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 도메인 설정</title>
</head>
<body>
	<%
		if(cookieHeader == null){
			out.print("쿠키 헤더가 존재하지 않습니다.");
		}else {
			Cookie [] cookies = request.getCookies();
		}
	%>
	
	<br>
	<hr>
	
	cookie1 이름 : <%= cookie1.getName() %> <br>
	cookie1 값 : <%= cookie1.getValue() %> <br>
	cookie1 도메인 : <%= cookie1.getDomain() %> <br>
	<hr>
	cookie2 이름 : <%= cookie2.getName() %> <br>
	cookie2 값 : <%= cookie2.getValue() %> <br>
	cookie2 도메인 :  <%= cookie2.getDomain() %> <br>
	<hr>
	cookie3 이름 : <%= cookie3.getName() %> <br>
	cookie3 값 : <%= cookie3.getValue() %> <br>
	cookie3 도메인 :  <%= cookie3.getDomain() %> <br>
	<hr>
	cookie4 이름 : <%= cookie4.getName() %> <br>
	cookie4 값 : <%= cookie4.getValue() %> <br>
	cookie4 도메인 :  <%= cookie4.getDomain() %> <br>
	<hr>
</body>
</html>

















