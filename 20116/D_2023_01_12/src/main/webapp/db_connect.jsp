<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<%
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "1234");
			if(con!=null){
				out.print("success!!");
			}else{
				out.print("failed ");
			}
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select sysdate from dual");
			
			while(rs.next()){
				out.print(rs.getString(1));
			}
			
			stmt.close();
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();	
		}
	%>
</body>
</html>