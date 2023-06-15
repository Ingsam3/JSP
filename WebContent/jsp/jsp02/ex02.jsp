<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page import= "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 문제01 : page import 속성을 사용해서 java.util.*를 임포트, 추상클래스 캘린더를 이용해서
	년월일 시분초 값을 out.println()과 <%= 표현식을 사용해서 출력.
 --%>

 
 <%
 	Calendar now = Calendar.getInstance(); 
    //calender는 추상클래스로 new 키워드 연산으로 객체 생성 X ,년월일시분초 값을 반환할 때 주로 사용한다.
	
 	int year = now.get(Calendar.YEAR);
 	int month = now.get(Calendar.MONTH)+1;
 	int date = now.get(Calendar.DATE);
 	int h = now.get(Calendar.HOUR);
 	int m = now.get(Calendar.MINUTE);
 	int s = now.get(Calendar.SECOND);
 	
	out.println("<h3>" +year+"년"+month+"월"+date+"일"+h+"시"+m+"분"+s+"초"+ "</h3>");
 %>
 
 <h3><%=year%>년<%=month%>월<%=date%>일<%=h%>시<%=m%>분<%=s%>초</h3>
 
