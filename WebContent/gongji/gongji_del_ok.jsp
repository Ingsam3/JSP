<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl"%>

<%
	request.setCharacterEncoding("UTF-8");

	int g_no = Integer.parseInt(request.getParameter("g_no"));
	String del_pwd = request.getParameter("del_pwd");

	GongjiDAOImpl gdao = new GongjiDAOImpl();
	GongjiVO db_pwd = gdao.getGongjiCont(g_no);//공지번호에 해당하는 공지내용를 가져온다.

	if (!db_pwd.getG_pwd().equals(del_pwd)) {
		out.println("<script>");
		out.println("alert('비번이 다릅니다!');");
		out.println("history.back();");
		out.println("</script>");
	} else {
		int re = gdao.delGongji(g_no);

		if (re == 1) {
			out.println("<script>");
			out.println("alert('관리자 공지 삭제에 성공했습니다!');");
			out.println("location='gongji_list.jsp';");
			out.println("</script>");
		}
	}
%>
