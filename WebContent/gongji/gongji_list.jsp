<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.naver.vo.*,com.naver.dao.*" %>
<%
    GongjiDAOImpl gdao=new GongjiDAOImpl();
    List<GongjiVO> glist = gdao.getGongjiList();//공지 목록을 가져옴.
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지목록</title>
</head>
<body>
 <table border="1">
  <tr>
   <th colspan="5">관리자 공지목록</th>
  </tr>
  
  <tr>
   <th>번호</th> <th>공지제목</th> <th>공지작성자</th> <th>조회수</th> <th>등록날짜</th>
  </tr>
  <%
    if(glist != null && glist.size() > 0){
    	for(GongjiVO g:glist){
  %>
   <tr>
    <th><%=g.getG_no()%></th>
    <th><a href="gongji_cont.jsp?no=<%=g.getG_no()%>"><%=g.getG_title()%></a></th> <%-- *.jsp?no=공지번호 를 브라우저 주소창에 노출되는 get방식으로 번호값을 전달한다. --%>
    <th><%=g.getG_name()%></th>   
    <th><%=g.getG_hit()%></th>
    <th><%=g.getG_date().substring(0,10)%></th> <%-- 0이상 10미만 사이의 년월일을 반환 --%>
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
    <input type="button" value="공지 작성" onclick="location='gongji_write.jsp';" >
    </th>
   </tr>
 </table>
</body>
</html>