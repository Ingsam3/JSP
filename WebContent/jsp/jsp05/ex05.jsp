<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<%-- errorPage 속성으로 에러 페이지를 지정 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5.에러 페이지 지정 </title>
</head>
<body>
	<h3>에러 페이지 지정</h3>
	name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>