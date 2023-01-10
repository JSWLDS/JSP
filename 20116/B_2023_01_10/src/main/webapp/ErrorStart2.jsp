<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ExceptionMethod.jsp"%>
    
    <%
    	String msg = request.getParameter("msg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지 예제</title>
</head>
<body>
	<%
		out.print(msg.length());
	%><br>
	위 코드는 에러 코드입니다. <br>
	
	현재 내용은 jsp 페이지 호출 시 에러가 발생하여 실행되지 못합니다. <br>

</body>
</html>