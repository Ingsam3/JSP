<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	// <%! :jsp 선언문. 변수나 메서드 선언 용도로 활용된다.
	public int multiply(int a, int b){
	int result =a*b;
	return result;
}
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>선언문 활용1</title>
	</head>
	<body>
		<h2>jsp 선언문 활용한 곱셈</h2>
		<h3>10*30 = <%=multiply(10,30) %></h3>
	</body>
</html>