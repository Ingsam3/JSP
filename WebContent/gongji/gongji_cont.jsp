<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl"%>
<%
	int gongjiNo = Integer.parseInt(request.getParameter("no"));//get으로 전달된 공지번호를 받아서 정수 숫자로 변경해서 좌측 변수에 저장
	GongjiDAOImpl gdao = new GongjiDAOImpl();

	GongjiVO g = gdao.getGongjiCont(gongjiNo);//공지번호에 해당하는 공지내용를 가져온다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지내용</title>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="2">관리자 공지내용</th>
		</tr>
		<tr>
			<th>공지제목</th>
			<td><%=g.getG_title()%></td>
		</tr>
		<tr>
			<th>공지내용</th>
			<td><%=g.getG_cont().replace("\n", "<br>")%></td>
			<%--textarea 에서 엔터키를 친 부분을 줄 바꿈한다. --%>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=g.getG_hit()%></td>
		</tr>

		<tr>
			<th colspan="2"><input type="button" value="공지수정"
				onclick="location='gongji_edit.jsp?gongjino=<%=gongjiNo%>';"> <input
				type="button" value="공지삭제"
				onclick="location='gongji_del.jsp?gongjino=<%=gongjiNo%>';">
				<input type="button" value="공지목록"
				onclick="location='gongji_list.jsp';"></th>
		</tr>
	</table>
</body>
</html>
