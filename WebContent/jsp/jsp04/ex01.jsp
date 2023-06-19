<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("memberId");
    	// 브라우저 주소창에 *.jsp?memberId= 아이디가 노출되는 get 방식으로 전달해야함 (쿼리스트링 방식)
    	if(id != null && id.equals("abc1234")){
    		//아이디값과 일치하는 지 판단
			response.sendRedirect("index.jsp"); // 메인 페이지로 이동
			//sendRedirect() : 원하는 주소 또는 파일로 이동시켜준다
    	}else{
    
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>1. 쿼리스트링 전달값 일치판단 </title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript"></script>
</head>
<body>
	<h2 style="color: red">잘못된 아이디입니다.</h2>
	<!-- 
	입력창에 :  ?[확인할 요소(받아온 변수)]= [확인할 아이디(입력된 아이디)] 입력해서 일치 판단
	http://localhost:1111/JSP/jsp/jsp04/ex01.jsp/?memberId=abc1234 -->

</body>
</html>
<% } %>