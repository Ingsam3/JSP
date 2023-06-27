<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
	Calendar c = Calendar.getInstance();
	request.setAttribute("time", c); //time 문자역 속성키 이름의 object 타입으로 업캐스팅 한 C가 저장됨(업캐스팅)


%>
<%-- forward에 의한 값 전달 방식 : 서블릿 MVC, spring MVC에서 사용하는 방식 --%>

<jsp:forward page="result.jsp"/> <%-- 주소값은 ex02.jsp이나, result.jsp 내용이 보인다 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2. forward 시간 출력 </title>
</head>
<body>

</body>
</html>