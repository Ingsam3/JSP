<%--

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>    
<%
	MemberDAOImpl mdao = new MemberDAOImpl();
	List<Member7vo> mlist = mdao.getMemlist();
	//회원 목록을 가져옴
	int totalMemberCount = mdao.getMemberCount();
	//총 회원 수
	


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8. 관리자 회원 목록</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="5">관리자 회원 목록</th>
		</tr>
	
		<tr>
			<td colspan="5" style="text-align: right;">
			<strong style="font-size: 28px;">총회원수</strong>
			</td>
		</tr>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>회원이름</th>
			<th>폰번호</th>
			<th>이메일</th>
		</tr>
	<%
		if(mlist != null && mlist.size() >0){
			for(Member7vo m : mlist){
	
	%>
	
	<%}else{ 
	%>
	<tr>
		<th colspan="5">회원 목록이 없습니다!</th>
	</tr>
	<%} %>
	
	</table>
</body>
</html>

--%>

