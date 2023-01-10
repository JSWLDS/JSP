<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 내장객체의 데이터 공유 예제</title>
</head>
<body>
	1. setAttribute() 메소드 실행
	<%
		pageContext.setAttribute("testAttribute", "Hello");
	%>
	
	2. getAttribute() 메소드를 통해 공유된 데이터 불러오기
		1) 현재 testAttribute의 속성값:
		<%pageContext.getAttribute("testAttribute");%>
		
	3. getAttribute() 메소드를 통해 데이터를 참조 변수에 대입하기
		1) 현재 testAttribute의 속성값:
		<%
			Object attribute1 = pageContext.getAttribute("testAttribute");
			out.print((String)attribute1 + "<hr>");
		%>
	4. removeAttribute() 메소드를 통해 공유된 데이터의 속성값 삭제하기 <br>
		1) 현재 testAtrribute의 속성값:
		<%
			pageContext.removeAttribute("testAtrribute");
			Object attribute2 = pageContext.getAttribute("testAttribute");
			out.print((String)attribute2 + "<hr>");
		%>
</body>
</html>