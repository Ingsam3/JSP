<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" %>
<%@ page errorPage ="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7. 버퍼 1kb 다 채우고 비우면 예외처리 에러 발생</title>
</head>
<body>
<h3>버퍼 1kb 다 채우고 비우면 예외처리 에러 발생</h3>
<%
	for(int i=1; i<=300; i++){
		out.println("&nbsp;" +i);
		//빈 공백 처리
	}

%>
<hr>
<%=8/0 %> <%-- 자바에서 정수 숫자를 0으로 나누면 예외 오류 발생 --%>
</body>
</html>