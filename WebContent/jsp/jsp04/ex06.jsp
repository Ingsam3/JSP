<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6. jsp 내장 객체 </title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
<%--
	** jsp 내장 객체 종류
	1. request 객체 
	: 사용자 입력폼에서 입력한 값을 서버로 가져올 때 사용한다
	2. response 객체
	: 서버의 정보를 사용자 웹브라우저에 응답할 때 사용한다
	3. pageContext 객체
	: jsp 페이지에 대한 정보를 저장할 때 사용한다
	4. session 객체
	: 로그인, 로그아웃 등 회원 관리에서 인증 프로그램 만들 때 사용한다
	5. application 객체
	: 웹 애플리케이션에 대한 정보 저장한다
	6. out 객체
	: 출력시 사용한다
	7. config 객체
	: jsp 페이지에 대한 설정 정보를 저장할 때 사용한다
	8. page 객체
	: jsp 페이지 구현 할 때 사용한다
	9. exception 객체
	: 예외 에러 페이지에서만 사용 
	
	웹개발에서 사용되는 jsp 내장 객체는 
	request, response, session, out를 주로 사용하고,
	application 등을 가끔 사용한다
	
 --%>
 
 <h3>out 내장 객체와 html_jsp 서버 스크립트 릿 코드가 혼합된 것과 <br>
 jsp 스크립트 코드만 사용한 것과의 차이점</h3>
 
 <h4>1. out 내장객체와 jsp 스크립트 코드만 사용한 예</h4>
 <%
 	int grade=90;
 	if(grade >=90){
 		out.println("<strong>A학점</strong>");
 	}else if(grade >=80){
 		out.println("<strong>B학점</strong>");
 	}
 	/*
 	스크립트 릿 코드만 있는 경우가 훨씬 간결하고 가독성이 좋다
 	*/
 %>
 <hr>
 <h4>2. html 코드와 jsp 스크립트 릿 코드가 혼합된 경우</h4>
 <%if(grade >=90){ %>
 <strong>A학점</strong>
 <%}else if(grade>=80){ %>
 <strong>A학점</strong>
 <% } %>
 <%--혼합 된 경우가 더 복잡하고 가독성이 떨어진다 --%>
 <hr>
 	

</body>
</html>