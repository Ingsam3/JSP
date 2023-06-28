<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>
<%

	request.setCharacterEncoding("UTF-8");
	String mem_id= request.getParameter("mem_id");
	String mem_pwd= request.getParameter("mem_pwd");
	String mem_name= request.getParameter("mem_name");
	String mem_phone= request.getParameter("mem_pone");
	String mem_email= request.getParameter("mem_email");
	

	MemberDAOImpl mdao=new MemberDAOImpl();//객체생성
	Member7vo em= new Member7vo();
	em.setMem_id(mem_id); 
	em.setMem_pwd(mem_pwd);
	em.setMem_name(mem_name);
	em.setMem_phone(mem_phone);
	em.setMem_email(mem_email);
	//객체에  전달 값 넣기
	
	int re = mdao.editMember(em);
	/* 문제)아이디를 기준으로 비번, 회원이름, 폰번호, 이메일을 수정되게 해보자
	*/
	if(re == 1){
		out.println("<script>");
		out.println("alert('회원정보수정에 성공했습니다!');");
		out.println("</script>");
		
		
	}
	
%>










<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정완료</title>
</head>
<body>

</body>
</html>