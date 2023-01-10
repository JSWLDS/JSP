<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체를 이용한 요청 정보 전송 예제</title>
</head>
<body>
	1. 요청 프로토콜 : <%= request.getProtocol() %> <br>
	2. 요청 방식 : <%= request.getMethod() %> <br>
	3. 현재 페이지 경로 : <%= request.getContextPath() %> <br>
	4. 웹 클라이언트 URI : <%= request.getRequestURI() %> <br>
	5. 웹 클라이언트 URL : <%= request.getRequestURL() %> <br>
	6. 웹 클라이언트 QUERY : <%= request.getQueryString() %> <br>
	7. 웹 클라이언트 호스트명 : <%= request.getRemoteHost() %> <br>
	8. 웹 클라이언트 IP주소 : <%= request.getRemoteAddr() %> <br>
	9. 웹 서버 도메인 : <%= request.getServerName() %> <br>
	10. 웹 클라이언트 호스트명 : <%= request.getServerPort() %> <br>
	<hr>
	<p>헤더 정보</p>
	<%
		Enumeration<String> header = request.getHeaderNames();
		while(header.hasMoreElements()){
			String name = (String)header.nextElement();
			String value = request.getHeader(name);
			out.print(name+":"+value+"<br>");
		}
	%>
</body>
</html>