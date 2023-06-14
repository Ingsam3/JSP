<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp01</title>
</head>
<body>
<h1>오늘 날짜와 시간 출력</h1>
<%=new java.util.Date() %>
<%-- %= : 주로 출력용, 숫자값도 문자열로 인식되어 출력.
          new 키원드 연산은 새로운 객체 생성--%>
</body>
</html>