<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--1. JSPday2--%>

 <%@ page import="java.util.Date" %>
 
<% 
	Date today =new Date();
	out.println("<h3>현재 날짜 시간 값: " +today+"</h3>" );

%>

<h1>현재 날짜 시간 값 : <%=today %></h1>

<%-- '<%= : 스크립트 요소에서 표현식으로 출력용도로 활용된다.' --%>