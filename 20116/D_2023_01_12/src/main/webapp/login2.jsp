<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
   <%@page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login2Check.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>이름</td> 
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><select name="gender">
					<option>남자</option>
					<option>여자</option>
				</select></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>이메일주소</td>
				<td><input type="email" name="email"></td>
			</tr>
		</table>
		<input type="submit" value="로그인">
	</form>
	<table border="1">
		<%
	//클래스 로드
	Class.forName("oracle.jdbc.OracleDriver");

	//Connection 취득
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
	String sql = "SELECT id, password, name, gender, address, phone, email FROM Member";
	
	//문장 생성
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//결과 집합 생성
	ResultSet rs = pstmt.executeQuery();
	
	
		 while(rs.next()){ %>
	
		<tr>
			<td><%= rs.getString("id")%></td>
			<td><%= rs.getString("password")%></td>
			<td><%= rs.getString("name")%></td>
			<td><%= rs.getString("gender")%></td>
			<td><%= rs.getString("address")%></td>
			<td><%= rs.getString("phone")%></td>
			<td><%= rs.getString("email")%></td>
		</tr>
		
	<%
	}
%>
	</table>
</body>
</html>