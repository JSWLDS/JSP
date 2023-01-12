<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
   <%@page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연동 예제</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>성별</th>
			<th>학과</th>		
		</tr>
<%
	//클래스 로드
	Class.forName("oracle.jdbc.OracleDriver");

	//Connection 취득
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
	String sql = "SELECT stuno, name, gender, major FROM Student";
	
	//문장 생성
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//결과 집합 생성
	ResultSet rs = pstmt.executeQuery();
	
	
	//출력
	while(rs.next()){ %>
	
		<tr>
			<td><%= rs.getInt("stuno")%></td>
			<td><%= rs.getString("name")%></td>
			<td><%= rs.getString("gender")%></td>
			<td><%= rs.getString("major")%></td>
		</tr>
		
	<%
	}
%>

	</table>
	
	<%
	
	//연결 종료
		pstmt.close();
		con.close();
		rs.close();
	
	%>
	
</body>
</html>