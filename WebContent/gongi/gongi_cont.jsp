<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.naver.vo.*,com.naver.dao.GongiDAOImpl" %> 
     
<%
	int no =Integer.parseInt(request.getParameter("no")); 
    GongiDAOImpl gdao=new GongiDAOImpl();
	GongiVO g = gdao.getGongiCont(no);//내용 가져와야함
	
	//g.setG_name("g_name");
%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 내용 보기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/gongi.js"></script>

</head>
<body>

<table border="1">
	<tr>
		<th colspan="2">공지 내용 보기</th>
	</tr>
	<tr>
		<th>공지 작성자<%=g.getG_name() %></th>
		<td></td>
	</tr>
	<tr>
		<th>공지제목<%=g.getG_title() %></th>
		<td></td>
	</tr>
	<tr>
		<th>공지내용<%=g.getG_cont() %></th>
		<td></td>
	</tr>
	<tr>
		<th>조회수<%=g.getG_hit() %></th>
		<td></td>
	</tr>
	<tr>
		<th colspan="3">
			<input type="button" value="수정" 
				onclick="location='gongi_edit.jsp?no=<%=g.getG_no()%>';">
				
				<input type="button" value="삭제" 
				onclick="location='gongi_del.jsp?no=<%=g.getG_no()%> ';">
				<!-- onclick에 여러 개 함수 넣는 방법 -->
			 <input type="button" value="목록" onclick="location='gongi_list.jsp'">
		</th>
	</tr>
</table>

</body>
</html>