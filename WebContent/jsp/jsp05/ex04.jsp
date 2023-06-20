<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4. try catch 문을 사용한 예외 처리</title>
</head>
<body>
<h3>try catch 문을 사용한 예외 처리</h3>
name 파라미터 값 : 
<%try {%>
	<%=request.getParameter("name").toUpperCase() %>
<%}catch(Exception e){ %>
	<strong style="color: blue">
	name 파라미터 값이 잘못 되었습니다.
	</strong>

<%} %>
</body>
</html>