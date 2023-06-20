<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- isErrorPage="true" : true 일 때 해당 페이지는 에러 페이지가 된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-1. 에러 페이지</title>
</head>
<body>
	<h3> 에러 발생 </h3>
	요청 처리 과정에서 에러가 발생했습니다.
	빠른 시간 내에 문제 해결하겠습니다.
	<hr>
	에러 타입 : <%= exception.getClass().getName() %>
	<hr>
	에러 메세지 : <strong><%= exception.getMessage()%></strong>
</body>
</html>