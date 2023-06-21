<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2. include 디렉티브(38.jsp)</title>
</head>
<body>
	<h3>include 디렉티브</h3>
	<%
		int number =10;
	%>
	<%@ include file="included.jspf" %>
	<%-- 포함될 파일 확장자에 .jspf로하면 소스코드 조각파일의 의미 (jsp로해도 됨) --%>
	
	공통변수 dataFolder : <%=dataFolder %> <%-- 파일이 합쳐지기 때문에 에러 아님 --%>
</body>
</html>