<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="oracle.jdbc.driver.OracleDriver" %>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
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
		int result;
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		 
    	Date today = new Date();
    	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh시mm분");
    	
    	String toDate = date.format(today);
    	
	%>
	
	<%
		try{
			
			
			//jdbc 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			//데이터베이스 접속
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
			
			//Preparedstatment 사용 
			pstmt = con.prepareStatement("INSERT INTO Notice(id, title, name, content, wdate) VALUES(num.NEXTVAL, ?, ?, ?, ?)");
										  
			
			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, toDate);

		
			
			
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
		response.sendRedirect("http://localhost:8080/E_2023_01_13/login2/Board.jsp");
	%>
</body>
</html>