<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	/* 1) post 방식으로 전송된 한글을 서버에서 받을 때 안 깨지게 해줌
	   2) jsp:include 액션태그에서 jsp:param 태그로 파라미터 이름에 담겨져서 전달된 한글을  안 깨지게 해줌
	*/
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. jsp:param - 파라미터 값 전달</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
	<h3>jsp:param 태그에 의해서 파라미터 값 전달 예제</h3>
	include되기 전 name 파라미터 값 : <%=request.getParameter("name") %>
	<%-- *jsp?name=파라미터 값을 get 방식 퀴리스트링 --%>
	
	<hr>
	<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="홍길동"/>	
	</jsp:include>
	<%-- jsp:param 액션태그에 의해서 전달되는 파라미터 값은
	 jsp:include 액셩태그에 의해서 포함된 body_sub.jsp 페이지 내에서만 유효하다 --%>
	
	<hr>
	include 이후 name 파라미터 값 : <%=request.getParameter("name") %> 
</body>
</html>