<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		//변수 선언
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result;
	%>
	
	<%
		try{
			
			//jdbc 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			//데이터베이스 접속
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
			
			//Preparedstatment 사용
			pstmt = con.prepareStatement("INSERT INTO Student(stuno, name, gender, major) VALUES(?, ?, ?, ?)");
			
			pstmt.setInt(1, 16);
			pstmt.setString(2, "정서원");
			pstmt.setString(3, "남자");
			pstmt.setString(4, "스마트보안솔루션과");
			
			result = pstmt.executeUpdate();
			out.print(result + "<hr>");
			
			
		}catch(SQLException e){
			
			out.print(e.getMessage());
			
		}finally{
			
			if(pstmt != null){
				try{
					pstmt.close();
				}catch(SQLException e){
					
				}
			}
			
			if(con != null){
				try{
					con.close();
				}catch(SQLException e){
					
				}
			}
			
		}
	%>
	<a href="http://localhost:8080/D_2023_01_12/StudentInsert.jsp">결과</a>
</body>
</html>