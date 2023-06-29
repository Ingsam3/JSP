<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
 <%@ page import="com.naver.vo.*,com.naver.dao.GongiDAOImpl" %> 
 
  <%
    GongiDAOImpl gdao=new GongiDAOImpl();
    List<GongiVO> glist = gdao.getGongiList();//회원목록을 가져옴.
    int totalGongiCount = gdao.getGongiCount();//총 회원수
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 목록</title>
</head>
<body>
 <table border="1">
  <tr>
   <th colspan="5">관리자 공지 목록</th>
  </tr>
  <tr>
   <td colspan="5" style="text-align: right;"><strong 
   style="font-size:28px; color:gray;">총 공지수:<%=totalGongiCount%></strong></td>
  </tr>
  <tr>
  <%-- <th>공지번호</th>--%><th>회원이름</th> <th>비밀번호</th> <th>글내용</th> <th>작성일</th>
  </tr>
  <%
    if(glist != null && glist.size() > 0){
    	for(GongiVO g:glist){
  %>
   <tr>
    <%-- <th><%=g.getG_no()%></th> --%>
    <th><a href="gongi_cont.jsp?no=<%=g.getG_no()%>"><%=g.getG_name()%></a></th>
    <%--<th><%=g.getG_name()%></th> --%>
    <th><%=g.getG_pwd()%></th>
    <th><%=g.getG_cont()%></th>
    <th><%=g.getG_date()%></th>
    <%-- *.jsp?id=아이디 를 브라우저 주소창에 노출되는 get방식으로 id값을 전달한다. --%>
   </tr>
  <% }
   }else{
  %>
  <tr>
   <th colspan="5">공지 목록이 없습니다!</th>
  </tr>
  <% } %>
   <tr>
    <th colspan="5">
    <input type="button" value="공지작성" onclick="location='gongi_write.jsp';" >
    </th>
   </tr>
 </table>
</body>
</html>