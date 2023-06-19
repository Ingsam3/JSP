
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8. pageContext 예제</title>
</head>
<body>
	<h3>pageCotext 기본 객체</h3>
	<%
		HttpServletRequest httpRequest =(HttpServletRequest)pageContext.getRequest();
	/*
	HttpServletRequest 서블릿 jsvs api는 사용자 폼에서 입력한 정보를 서버로 가져올 때 사용한다
	*/
	
	%>
	request jsp 기본 내장 객체와 pageContext.getRequest()의 동일 여부 : <%= request == httpRequest%>
	<hr>
	pageContext.getOut(); 메서드를 사용한 데이터 출력 : <% pageContext.getOut().println("HI"); %>
	<%--pageContext.getOut() 는 출력용도로 사용되는 out 와 같다 --%>
	
</body>
</html>