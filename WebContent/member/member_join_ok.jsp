<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>    
    
<%
	request.setCharacterEncoding("UTF-8"); // 한글 안 깨지게
%>    
<jsp:useBean id="mem" class="com.naver.vo.Member7vo"/>    
<%-- jsp 유즈빈 애션태그 : Member7vo 클래스의 객체명 mem을 생성 --%>   
<jsp:setProperty name="mem" property="*"/>
<%-- 값 저장  액션 태그이다. name 속성으로 객체명 mem을 참조, 
프로퍼티 속성값을 *로 처리할 수 있는 이유 : 빈 클래스 변수명과 네임 파라미터 이름이 같기 때문이다. (그만큼 코드라인 감소) --%>

회원 아이디 : <jsp:getProperty name="mem" property="mem_id"/><hr>
<%-- 값 반환 액션 태그. 자바코드로 표현하면 mem.getMem_id();와 같은 역할을 한다 --%>
회원 이름 : <%=mem.getMem_name() %>  <%-- get으로 가져옴 --%>
<hr>

<%
	MemberDAOImpl mdao = new MemberDAOImpl();
	int result =mdao.insertMember(mem);
	//회원 저장
	
	if(result ==1){
		out.println("<script>");
		out.println("alert('회원 가입에 성공');");
		out.println("location='member_list.jsp';");
		out.println("</script>");
	}

%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> jsp:useBean 태그(get,set)</title>
</head>
<body>

</body>
</html>