<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%!

		public int add (int a, int b){
			return a+b;
		}
		public int sub (int a, int b){
			return a-b;
		}
		public int mul (int a, int b){
			return a*b;
		}
		public int div (int a, int b){
			return a/b;
		}
		public int remainder (int a, int b){
			return a%b;
		}
		
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><b>10, 3의 오칙 연산 결과</b></h3><br>
	<%
	  int add = add(10, 3);
	  int sub = sub(10, 3);
	  int mul = mul(10, 3);
	  int div = div(10, 3);
	  int remainder = remainder(10, 3);
	 %>
	 10과  3의 덧셈 결과는 [<%=add %>] 입니다. <br>
	 10과  3의 뺄셈 결과는 [<%=sub %>] 입니다. <br>
	 10과  3의 곱셈 결과는 [<%=mul %>] 입니다. <br>
	 10과  3의 나눗셈 결과는 [<%=div %>] 입니다. <br>
	 10과  3의 나머지 연산 결과는 [<%=remainder %>] 입니다. 
</body>
</html>