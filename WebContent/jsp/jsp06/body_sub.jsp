<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 body_sub.jsp 에서 name 파라미터 값 : <%=request.getParameter("name") %>
 <br>
 name 파라미터 값 목록 출력 :
 <ul>
 	<%
 		String[] names = request.getParameterValues("name");
 		//복수개의 name 파라미터 값을 문자열 배열로 받아서 처리
 		
 		/*
 			1) jsp:param 태그는 동일한 name 파라미터 값이 존재하면 기존 파라미터 값 유지한 채 새로운 값을 추가한다
			2) get으로 전달된 파라미터 값 보다는 jsp:param 태그에 의해서 전달되는 파라미터 값을 우선한다
 		
 		*/
 		
 		for(String name:names){
 			//향상된 for문 : 배열이나 복수개의 원소값을 쉽게 읽어옴
 	%>
 	<li> <%=name %> </li>
 	<% } %>
 
 </ul>