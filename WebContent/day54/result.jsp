<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<h3> forward 되어지고 난 후 본문 내용 창에 보여지는 시간</h3>

<%
	Calendar cal = (Calendar)request.getAttribute("time");//다운 캐스팅
	//time 문자열 속성 키이름에 해당하는 calende를 구함
	int year=cal.get(Calendar.YEAR);
	//년도
	int momth=cal.get(Calendar.MONTH)+1;
	//월+1 : 1월이 0으로 반환되기 때문이다
	int date=cal.get(Calendar.DATE);
	//일
	
	out.println(year+"년"+momth+"월"+date+"일");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-2. forward 년월일 값 출력</title>
</head>
<body>

</body>
</html>