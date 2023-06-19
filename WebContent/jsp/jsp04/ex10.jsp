<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>톰켓  was 서버 정보와 서블릿 버전</title>
</head>
<body>
	<h3>application jsp 내장객체로 톰켓  was 서버 정보와 서블릿 버전 알아내기</h3>
	서버 정보 : <%=application.getServerInfo() %>
	<hr>
	서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %>
	<hr>
	서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %>
	<%-- 메니저 버전-4, 마이너 버전이 0 이면 서블릿 버전은 4.0 의미 --%>
</body>
</html>