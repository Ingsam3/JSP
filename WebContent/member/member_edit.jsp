<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>
<%
	String id= request.getParameter("id");
	//get으로 전달된 아이디 값을 받는다
	MemberDAOImpl mdao=new MemberDAOImpl();
	Member7vo m= mdao.getMemberInfo(id);
	//아이디에 해당하는 회원 정보를 오라클 DB로부터가져온다

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/join.js"></script>
</head>
<body>
<h2>회원정보 수정 폼</h2>
<form method="post" action="member_edit_ok.jsp" onsubmit="return join_check();">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input name="mem_id" id="mem_id" readonly value="<%=m.getMem_id() %>"></td>
			<%-- readonly="readonly" : 회원 정보에서 아이디는 삭제 안 함 단지 읽기만 가능한 기능 --%>
			<%--id는 수정하는 것이 아니니, 출력만 함 --%>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="mem_pwd" id="mem_pwd" size="14"></td>
		</tr>
		<tr>
			<th>회원이름</th>
			<td><input type="text" name="mem_name" id="mem_name" size="14" value="<%=m.getMem_name()%>"></td>
		</tr>
		<tr>
			<th>폰번호</th>
			<td><input type="tel" name="mem_phone" id="mem_phone" size="20" value="<%=m.getMem_phone()%>"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" name="mem_email" id="mem_email" size="30" value="<%=m.getMem_email()%>"></td>
		</tr>
	
		<tr>
			<th colspan="2">
				<input type="submit" value="회원수정">
				<input type="reset" value="수정취소" onclick="$('#mem_pwd').focus();">
			</th>
			
		</tr>
	</table>



</form>

</body>
</html>