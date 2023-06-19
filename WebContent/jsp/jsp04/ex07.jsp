<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page buffer="8kb" autoFlush="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7. 버퍼 정보와out내장 객체 하위 메서드</title>
</head>
<body>
	<h3>버퍼 정보와out내장 객체 하위 메서드</h3>
	버퍼크기 : <%=out.getBufferSize() %>
	<hr>
	버퍼 남은 크기 : <%=out.getRemaining() %>
	<hr>
	버퍼 가 찬 경우 자동으로 비울것인지 : <%=out.isAutoFlush() %>
	
</body>
</html>