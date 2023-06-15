<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% // 본 영역을 jsp 스크립트 요소에서 스크립트릿이라고 한다. 스크립트릿에서는 자바문법을 따라간다
	String bookTitle ="jsp";
	String author ="lee";

	System.out.println("책제목 : "+bookTitle);
	System.out.println("저자명 : "+author);
	
	out.println("<hr>");
	out.println("책제목: <strong>"+bookTitle+"</strong>");
	//out : 출력 스트림jsp내장객체.
	//out.println 에서 ln은 줄바꿈 X 줄바꾸고 싶으면 <br>
	out.println("<br>");
	out.println("저자이름: <b style='font-size:32px;'>"+author+"</b>");
	out.println("<hr>");
	
%>    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jsp02</title>
</head>
<body>

</body>
</html>