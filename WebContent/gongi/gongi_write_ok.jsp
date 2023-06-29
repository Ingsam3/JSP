<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.naver.vo.*,com.naver.dao.GongiDAOImpl" %>       
   

<%
	request.setCharacterEncoding("UTF-8");

	String g_name= request.getParameter("g_name");
	String g_title= request.getParameter("g_title");
	String g_pwd= request.getParameter("g_pwd");
	String g_cont= request.getParameter("g_cont");
	
	
	GongiDAOImpl gdao=new GongiDAOImpl();//객체생성
	GongiVO go= new GongiVO();

	go.setG_name(g_name);
	go.setG_title(g_title);
	go.setG_pwd(g_pwd);	
	go.setG_cont(g_cont);

	//객체에  전달 값 넣기
	
	int re = gdao.gongi_insert(go);
	
	if(re == 1){
		out.println("<script>");
		out.println("alert('공지사항 등록에 성공했습니다!');");
		out.println("location='gongi_list.jsp';");
		out.println("</script>");
		
}
%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지작성 확인</title>
</head>
<body>

</body>
</html>