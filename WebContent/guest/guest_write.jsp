<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. 방명록 글쓰기 폼</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/guest.js"></script>

</head>
<body>
	<form method="post" action="guest_write_ok.jsp" onsubmit="return check();">
		<table border="1">
			<tr>
				<th colspan="2">1. jsp 방명록 글쓰기 폼</th>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input name="gname" id="gname" size="14"></td>
			</tr>
			<tr>
				<th>글제목</th>
				<td><input name="gtitle" id="gtitle" size="36"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="gpwd" id="gpwd" size="14"></td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea name="gcont" id="gcont" rows="10" cols="38"></textarea></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="방명록 저장">
					<input type="reset" value="취소" onclick="$('#gname').focus();">
				</th>
			
			</tr>
			
		
		</table>
	
	
	</form>
</body>
</html>