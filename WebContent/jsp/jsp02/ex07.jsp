<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    //코드 간결화 생각
    public int add(int a, int b){
    	return  a+b;
    } 
    
    public int substract(int a, int b){
    	return a-b;
    } 
    
    %>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>선언문 활용2</title>
		</head>
		<body>
			<h2>선언문 활용 합, 차 구하기 </h2>
			<%
				int val01=3;
				int val02=9;
				
				/*문제1 : add 메소드를 선언하여 두 정수의 합 반환*/
				/*문제2 : substract 메소드를 선언하여 두 정수의 차 반환*/
			
			%>
			<h3>a+b = <%=add(val01,val02) %></h3>
			<h3>a-b = <%=substract(val01,val02) %></h3>
			<%--강사답안 --%><hr>
			<h3><%=val01 %>+<%=val02 %>= <%=add(val01,val02) %></h3>
			<h3><%=val01 %>-<%=val02 %>= <%=substract(val01,val02) %></h3>
			
		</body>
</html>