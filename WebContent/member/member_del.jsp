<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.MemberDAOImpl" %>
<%
    String id=request.getParameter("id");
    MemberDAOImpl mdao=new MemberDAOImpl();
    
    int re=mdao.delMember(id);//아이디를 기준으로 삭제
    /* 문제)아이디를 기준으로 회원을 삭제되게 만들어 보자.
    */
    
    if(re == 1){
    	out.println("<script>");
    	out.println("alert('회원 삭제에 성공했습니다!');");
    	out.println("location='member_list.jsp';");
    	out.println("</script>");
    }
%>