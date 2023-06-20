<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3. 예외 오류 발생</title>
</head>
<body>
<h3>예외 오류 발생</h3>
name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
<%--name 파라미터 값이 null인 상태에서 영문대문자로 변경할 때 예외 오류 발생 --%>
</body>
</html>