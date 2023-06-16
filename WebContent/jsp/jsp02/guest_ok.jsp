<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");

String gname = request.getParameter("gname");
String gTitke = request.getParameter("gTitke");

out.print("글쓴이 : "+gname);


//하이퍼 링크

out.print("<hr><a href='jspFom.jsp'>방명록 글쓰기</a>");

 %>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>--%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");//method=post전송방식으로 전달된 한글 데이터를 안깨지게 한다.
   
   String gName = request.getParameter("gName");
   String gTitle = request.getParameter("gTitle");
   String gCont = request.getParameter("gCont");
   
   out.println("글쓴이:"+gName+",글제목:"+gTitle+",글내용:"+gCont);
   out.println("<hr><a href='jspForm12.jsp'>방명록 글쓰기</a>");
%>



