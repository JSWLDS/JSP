<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#title{
			width:1000px;
		}
		#content{
			width: 1000px;
			height: 500px;
		}
	</style>
</head>
<body>
    <form action="save.jsp" method="post">
        <div>
            <h3>게시판 글쓰기 양식</h3>
            <input type="text" placeholder="글쓴이" id="title" name="name"> <br>
            <input type="text" placeholder="글 제목" id="title" name="title"> <br>
            <textarea placeholder="글 내용"  id="content" name="content"></textarea>
        </div>
        <input type="submit">
    </form>
</body>
</html>