<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request 객체</title>
	</head>
	<body>
	
	<h1>request 사용한 클라이언트(사용자)와 서버 정보</h1>
	1.프로토콜(통신 규약) : <%=request.getProtocol() %><hr>
	2.전송방식(get) : <%=request.getMethod() %><hr>
	<%--웹브라우저에서 직접 실행하거나 주소창에서 직접 입력해서 실행하는 방식은 get으로 인식한다 --%>
	3.요청url : <%=request.getRequestURI() %><hr>
	4.컨텍스트 경로 :  <%=request.getContextPath() %><hr>
	5.서버 경로 : <%=request.getServerName() %>
	6.서버포트 번호 : <%=request.getServerPort() %>
	
	</body>
</html>