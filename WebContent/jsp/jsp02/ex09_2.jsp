<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%
	request.setCharacterEncoding("UTF-8"); //post로 전송되는 한글 깨짐 방지
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request 전송 - form예제(전송 받는 페이지)</title>
	</head>
	<body>
		<h2>파라미터 값 받기</h2>
		<h3>request.getParameter()메서드 사용</h3>
		1. name 값 : <%=request.getParameter("name") %><br>
		2. address 값 : <%=request.getParameter("addr") %><br>
		3. pet 값 : <%=request.getParameter("pet") %><br>
		<hr>
		<!-- 주소 담아서 출력 -->
		<% String name=request.getParameter("name");
		   out.print("name : "+name);	
		%>
		<br>
		<%
		  String addr=request.getParameter("addr");
		  out.print("address : "+addr);	
		 %>
		 <br>
		 <%
		  String pet=request.getParameter("pet");
		  out.print("pet : "+pet);
		 %> 
		 <hr>
		<%
			String [] values = request.getParameterValues("pet");
			//checbox는 복수개의 파라미터 값이 전달되기 때문에 문자열 배열로 받아서 처리한다
			
			//for문
			if((values != null) && (values.length >0)){
				/*문제 : 좋아하는 동물을 일반 for 반복문과 향상된 확장for 반복문을 사용해서 각각 출력해보자*/
				 out.print("좋아하는 동물 : ");
				for(int i=0; i<values.length; i++){
				 out.print( values[i]);
				}
			}else{
				out.print("좋아하는 동물이 없습니다");
			}
			%>	
			<hr>
			<%
			//향상된 for문
			out.print("좋아하는 동물 : ");
			for(String v :values){
				 out.print(v);
			}
			%>
			<hr>
			<h4>강사답안</h4>
			<% //제어문 쓸 때 선택 값이 없으면 오류남, 예외처리 해야할 듯
				if((values != null) && (values.length >0)){
					/*문제 : 좋아하는 동물을 일반 for 반복문과 향상된 확장for 반복문을 사용해서 각각 출력해보자*/
					 out.print("좋아하는 동물 : ");
					for(int i=0; i<values.length; i++){
					 out.print( values[i]+" ");
					}
				}else{
					out.print("좋아하는 동물이 없습니다");
				}
				//향상된 for
				out.print("좋아하는 동물 : ");
				for(String v :values){
					 out.print(v+" ");
				}
			%>
			<hr style="border: 2px">
			<h3>request.getParameterNames()메서드 사용</h3>
			<%
			Enumeration paraEnum =request.getParameterNames(); //파라미터 이름을 구함
			/*
			request.getParameterNames();
			:Enumeration 타입으로 구한다
			  컬렉션 원소값을 쉽게 읽어오는 용도로 활용한다
			*/
			while(paraEnum.hasMoreElements()){//파라미터 값이 존재시 실행
				String name01=(String)paraEnum.nextElement();
				out.print(name01+" ");
			}
			%>
			
	</body>
</html>