<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> request 전송 - form예제</title>
	</head>
	<body>
		<h2>폼 입력 예제</h2>
		<form method="post" action="ex09_2.jsp">
		이름 : <input type="text" name="name" size="14" ><br><br>
		주소 : <input type="text" name="addr" size="34" ><br><br>
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="Dog" >강아지
			<%-- checkbox : 네모박스, 복수선택 가능, 
				 pet 네임 파라미터 이름에 value 속성값인 Dog가 저장되어 서버로 전송된다 --%>
			<input type="checkbox" name="pet" value="Pig" >돼지
			<input type="checkbox" name="pet" value="Cat" checked>고양이
			<%--checked: checked 속성 사용하면 미리 선택 --%>
			<hr>
			<%--pig 선택하면 pig 저장되어 전송됨 --%>
			<input type="submit" value="전송" >
			<input type="reset" value="취소" >
		</form>
	</body>
</html>