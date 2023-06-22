<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*문제 : 비번이 같으면 삭제되게 하고 비번이 다르면 alert('비번이 다릅니다'); 경고창 띄우고
	history.go(-1)을 사용해서 뒤로 한칸 이동한다 (history.back()과 같은 기능이다)
	delete 삭제 쿼리문 수행 후 성공한 레코드 행의 개수 1를 리턴 받아서 if 조건문으로 처리해서 
	jsp 내장 객체인 response.sendRedirect("guest_list.jsp")로 이동 되게 한다
	참조 소스파일 (guest_edit_ok.jsp)*/



%>