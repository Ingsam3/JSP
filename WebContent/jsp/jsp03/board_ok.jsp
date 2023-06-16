<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>4. 글내용 받아오는 페이지</title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script type="text/javascript">
		/* 글제목, 글내용 가져와서 출력,  
		       한글 데이터 깨지는지 확인,
		       하이퍼 링크 방식으로 게시판 글쓰기로 이동되게 만들기
		*/
		</script>
	</head>
	<body>
		글제목 :<%=request.getParameter("title") %> <!-- 한글 깨짐 -->
		<br>
		<%
		out.print("<hr>");
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		out.print("글제목 : "+title);
		out.print("<br>");
		String content = request.getParameter("content");
		out.print("글내용 : "+content);
		%>
		<form>
		<hr>
			<a href="jspform14.jsp">이동</a>
		</form>
	</body>
</html>