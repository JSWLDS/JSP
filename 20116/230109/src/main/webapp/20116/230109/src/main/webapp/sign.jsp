<!DOCTYPE html>
<html lang="en">
 <%request.setCharacterEncoding("utf-8"); %>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css.css">
    <title>Document</title>
</head>
<body>
   <div class="logo_div">
        <a href="http://naver.com" class="logo_img"></a>
   </div>
    <form action="requestHtml.jsp" method="post">
		이름<br>
    	<input type="text" name="name"> <br>
        <input type="text" value="일" name="day"><br>
		성별<br>
    		 <select name="gender">
                <option>성별</option>
                <option>남자</option>
                <option>여자</option>
                <option>선택 안함</option>
            </select><br>
    	아이디<br>
    	<input type="text" name="id"> <br>
    	비밀번호<br>
    	<input type="password" name="password"> <br>
    	비밀번호 재확인<br>
    	<input type="password" name="password"> <br>

             전화<br>
            <input type="text" name="phone"> <br>
            본인 확인 이메일<br>
            <input type="email" name="email"><br>
   
             취미
             <input type="checkbox" name="interest" value="soccer">축구
			 <input type="checkbox" name="interest" value="baseball">야구
			 <input type="checkbox" name="interest" value="basketball">농구
			 <input type="checkbox" name="interest" value="swim">수영
			 <input type="checkbox" name="interest" value="game">게임
			 <input type="checkbox" name="interest" value="read">독서
			 <input type="checkbox" name="interest" value="music">음악
			 <input type="checkbox" name="interest" value="TV">TV
			 <input type="checkbox" name="interest" value="movie">영화
			 <input type="checkbox" name="interest" value="drama">연극
			 <input type="checkbox" name="interest" value="musical">뮤지컬
			 <input type="checkbox" name="interest" value="display">전시
			 <br>
			 <input type="submit">
    </form> 
</body>
</html>