<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5. ContextPath 경로</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
	<h2>ContextPath 경로</h2>
		웹 애플리케이션 컨텍스트 패스 경로 :
		<strong style="font-size: 28px; color: red;">
		"<%= request.getContextPath() %>"<hr>
		</strong> 
</body>
</html>