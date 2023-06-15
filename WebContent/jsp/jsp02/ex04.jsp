<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<html>
<head>
<meta charset="UTF-8">
<title>trimDirectiveWhitespaces</title>
</head>
<body>
<!-- 한줄 빈 공백 생길 때 -->
<%--trimDirectiveWhitespaces="true" : 첫번 째라인 빈 공백 제거 --%>
현재 시간 : <%= new java.util.Date() %><hr>
</body>
</html>