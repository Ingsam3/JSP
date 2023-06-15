<%@ page language="java" contentType="text/html; charset=UTF-8"
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
</html>