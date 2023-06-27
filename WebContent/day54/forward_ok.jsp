<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	String code = request.getParameter("code");
	String url =null;
	

	if(code.equals("A")){
		url="a.jsp";
	}else if(code.equals("B")){
	url="b.jsp";
	}else if(code.equals("C")){
	url="c.jsp";
	}


	

%>    
    
 <jsp:forward page="<%=url%>"/>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-2. select 값 받아오는 페이지</title>
</head>
<body>

</body>
</html>