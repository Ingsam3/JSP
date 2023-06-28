<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>

<%
	String id= request.getParameter("id");
	MemberDAOImpl mdao=new MemberDAOImpl();//객체생성
	
	int re = mdao.delMember(id);//아이디를 기준으로 삭제
	/*문제) 아이디를 기준으로 회원을 삭제되게 만들어보자
	*/
	
	if(re == 1){
		out.println("<script>");
		out.println("alert('삭제에 성공했습니다!');");
		out.println("location='member_list.jsp';");
		out.println("</script>");
		
	}

%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원삭제</title>
</head>
<body>

</body>
</html>