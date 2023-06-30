<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl" %>

<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="eg" class="com.naver.vo.GongjiVO" /> <%-- jsp:useBean 액션태그, GongjiVO 빈클래스 객체 g생성 --%>
<jsp:setProperty property="*" name="eg" /> <%-- 값 저장 액션태그, 프로퍼티 속성값을 *로 처리하면 한꺼번에 값이 저장됨. 이렇게 할 수 있는 이유가 네임피라미터 이름과 빈클래스 변수명이 같기 때문이다. --%>

<%
   GongjiDAOImpl gdao = new GongjiDAOImpl();
   GongjiVO db_pwd = gdao.getGongjiCont(eg.getG_no());//공지번호에 해당하는 공지내용를 가져온다.
   
   if(!db_pwd.getG_pwd().equals(eg.getG_pwd())){
	   out.println("<script>");
	   out.println("alert('비번이 다릅니다!');");
	   out.println("history.back();");
	   out.println("</script>");
   }else{
	   int re=gdao.updateGongji(eg);
	   
	   if(re==1){
		   out.println("<script>");
		   out.println("alert('관리자 공지 수정에 성공했습니다!');");
		   out.println("location='gongji_list.jsp';");
		   out.println("</script>");
	   }
   }
%>   