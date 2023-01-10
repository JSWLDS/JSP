<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="B.jsp" method="post">
		이름 <input type="text" name="name"><br>
		성별  <select name="gender"><option value="M">남자</option><option value="H">여자</option></select><br>
		아이디 <input type="text" name="id"><br>
		비밀번호 <input type="password" name="password"><br>
		비밀번호 확인 <input type="password" name="password"><br>
		주소 <input type="text" name="address"> <br>
		전화번호 <input type="text" name="phone"><br>
		이메일주소 <input type="email" name="email"><br>
		취미 축구<input type="checkbox" value="축구" name="hobby"> 
			야구<input type="checkbox" value="야구" name="hobby"> 
			농구<input type="checkbox" value="농구" name="hobby"> 
			수영<input type="checkbox" value="수영" name="hobby"> 
			게임<input type="checkbox" value="게임" name="hobby"> 
			독서<input type="checkbox" value="독서" name="hobby"> 
			음악<input type="checkbox" value="음악" name="hobby"> 
			TV<input type="checkbox" value="TV" name="hobby"> 
			영화<input type="checkbox" value="영화" name="hobby"> 
			연극<input type="checkbox" value="연극" name="hobby"> 
			뮤지컬<input type="checkbox" value="뮤지컬" name="hobby"> 
			전시<input type="checkbox" value="전시" name="hobby">
			<hr> 
			<input type="submit">
	</form>
</body>
</html>

