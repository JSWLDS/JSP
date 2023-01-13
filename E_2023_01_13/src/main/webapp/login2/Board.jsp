<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <% request.setCharacterEncoding("utf-8"); %>
     <%@ page import="java.sql.*" %>
    <%@ page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			
			<%
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
				String sql = "SELECT id, name, title, content, wdate FROM Notice";
				
				//문장 생성
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				//결과 집합 생성
				ResultSet rs = pstmt.executeQuery();
				
			
				 	while(rs.next()){ %>
			
						<tr>
							<td><%= rs.getInt("id") %></td>
							<td><%= rs.getString("name")%></td>
							<td><%= rs.getString("title")%></td>
							<td><%= rs.getString("content")%></td>
							<td><%= rs.getString("wdate")%></td>
						</tr>
				
					<%
			}
		%>
		</table>

</body>
</html>
