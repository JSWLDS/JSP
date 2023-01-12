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
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
	%>
	
	<%
		try{
			
			//jdbc 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			//데이터베이스 접속
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
			
			//Preparedstatment 사용
			pstmt = con.prepareStatement("INSERT INTO Member(id, password, name, gender, address, phone, email) VALUES(?, ?, ?, ?, ?, ?, ?)");
			
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, gender);
			pstmt.setString(5, address);
			pstmt.setString(6, phone);
			pstmt.setString(7, email);
			
		
			
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
</body>
</html>