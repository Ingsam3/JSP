<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.naver.vo.*,com.naver.dao.GongiDAOImpl" %> 
     
<%
    GongiDAOImpl gdao=new GongiDAOImpl();
	//GongiVO g = gdao.getGongiCont();//내용 가져와야함
 
%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 내용 보기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/boarder.js"></script>

</head>
<body>

<table border="1">
	<tr>
		<th colspan="2">공지 내용 보기</th>
	</tr>
	
	
	<tr>
		<th>공지제목</th>
		<td></td>
	</tr>
	<tr>
		<th>공지내용</th>
		<td></td>
	</tr>
	<tr>
		<th>조회수</th>
		<td></td>
	</tr>
	<tr>
		<th colspan="3">
			<input type="button" value="수정" 
				onclick="location='gongi_edit.jsp?no=';">
				
				<input type="button" value="삭제" 
				onclick="location='gongi_del.jsp?no= '; last_ck();">
				<!-- onclick에 여러 개 함수 넣는 방법 -->
				
			 <input type="button" value="목록" onclick="location='gongi_list.jsp'">
		</th>
	</tr>


</table>

</body>
</html>