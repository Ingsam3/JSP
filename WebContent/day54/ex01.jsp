<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. forward 액션태그</title>
</head>
<body>
<h3>forward 실습 예제</h3>
<form action="forward_ok.jsp">
<!-- 메소드 속성 생략시 기본 값은 get 방식 -->
보고싶은 페이지 선택 : <select name="code">
		<%-- radio,checkbox,select는 네임 파라미터 이름에 value 속성값이 담겨져 서버로 전송된다 --%>
		<option value="A">A page</option>
		<option value="B">B page</option>
		<option value="C">C page</option>
		
</select>
<hr>
<input type="submit" value="이동">

</form>
</body>
</html>