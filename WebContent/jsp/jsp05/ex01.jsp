<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	/*웹 주소창에 노출되는 get 방식(쿼리스트링 방식)
	  *.jsp?name=arr01&value=value01
	  & 기호로 구분해서 name 파라미터 이름에 arr01, value 파라미터 이름에 value01을 각각 담아서 전달한다
	*/

	if(name != null && value != null){
		application.setAttribute(name, value);
		//문자열 키 이름과 Object 타입으로 value 값을 업 캐스팅해서 저장
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. setAttribute()</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
	<%
	if(name != null && value != null){%>
		application 객체 속성 설정 : <%=name %> = <%=value %>	
	<% }else{ %>
		application 객체 속성 설정 안함
	<%} %>
	
</body>
</html>