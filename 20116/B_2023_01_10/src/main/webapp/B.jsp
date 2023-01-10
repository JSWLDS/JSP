<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String [] hobby = request.getParameterValues("hobby");
	%>
	<% if(gender.equals("M")){
			gender="남자";
		} else {
			gender="여자";
		}
		%>
	이름 : <%= name %> <hr><br>
	성별 : <%= gender %> <hr><br>
	아이디 : <%= id %> <hr><br>
	주소 : <%= address %> <hr>
	<br>
	전화번호 : <%= phone %> <hr><br>
	이메일주소 : <%= email %> <hr><br>
	
	
	취미 :  <% if(hobby == null){ %>
			[선택한 취미가 없습니다]
	<% }else{ %>
	<table border="1"> 
			
			 <%
			for(int i=0; i<hobby.length; i++){%>
				<tr><td><%= hobby[i] %></td></tr>	
			<%} 
			}	%>			
		  </table>

</body>
</html>