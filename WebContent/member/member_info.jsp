<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>

<%
	String mem_id=request.getParameter("id");
	//get으로 전달된 아이디 값을 받아서 좌측 변수에 저장
	MemberDAOImpl mdao=new MemberDAOImpl();
	
	Member7vo m= mdao.getMemberInfo(mem_id);
	//아이디에 해당하는 회원 정보를 가져온다
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원정보</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="2">관리자 회원정보</th>
		</tr>
		<tr>
			<th>회원아이디</th><td><%=m.getMem_id() %></td>
		</tr>
		<tr>
			<th>회원이름</th><td><%=m.getMem_name() %></td>
		</tr>
		<tr>
			<th>회원폰번호</th><td><%=m.getMem_phone() %></td>
		</tr>
		<tr>
			<th>회원이메일</th><td><%=m.getMem_email() %></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="button" value="회원정보 수정" 
				onclick="location='member_edit.jsp?id=<%=mem_id %>;'">
				<input type="button" value="회원 삭제"
				onclick="if(confirm('정말로 회원삭제할까요?') == true ){
				location='member_del.jsp?id=<%=mem_id %>';}else{return;}">
				<input type="button" value="회원목록" onclick="location='member_list.jsp';">
			</th>
		</tr>
	
	</table>

</body>
</html>