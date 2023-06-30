<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl" %>

<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="g" class="com.naver.vo.GongjiVO" /> <%-- jsp:useBean 액션태그, GongjiVO 빈클래스 객체 g생성 --%>
<jsp:setProperty property="*" name="g" /> <%-- 값 저장 액션태그, 프로퍼티 속성값을 *로 처리하면 한꺼번에 값이 저장됨. 이렇게 할 수 있는 이유가 네임피라미터 이름과 빈클래스 변수명이 같기 때문이다. --%>

<%
   GongjiDAOImpl gdao = new GongjiDAOImpl();
   int result = gdao.gongji_insert(g);
   
   if(result == 1){
%>
    <script>
      alert("관리자 공지 저장에 성공했습니다!");
      location = "gongji_list.jsp";
    </script>
<% } %>