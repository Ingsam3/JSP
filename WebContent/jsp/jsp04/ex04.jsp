<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page buffer="1kb" autoFlush="true" %>   
<%-- autoFlush="true" : true일때  버퍼(임시메모리)가 다차면 자동으로 비워서(flash)
데이터를 브라우저로 정상적으로 출력하고 다시 버퍼를 채운다.  --%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4. autoFlush="true"</title>
</head>
<body>
	<h2>autoFlash  속성값  true 예제</h2>
	<%
		for(int k=1; k<=1000; k++){
	%>		
	&nbsp; 1234 <!-- 빈공백 -->
	<% 
		}
	%>
</body>
</html>