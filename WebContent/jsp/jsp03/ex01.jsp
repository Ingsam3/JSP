<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1. JSP 회원가입 예제(유효성 검증)</title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script src="../js/jquery.js"></script>
		<script type="text/javascript">
			/*아이디부터 이메일까지 js와 jquery 사용해서 유효성 검증 메시지 경고창 생성*/
			function join_check(){
			  
			   $mem_id =  $.trim($('#mem_id').val());//trim()함수는 양쪽공백을 제거, 글쓴이를 저장
			   if($mem_id.length == 0){
				   window.alert('아이디를 입력하세요!');//window.은 생략가능함.
				   $('#mem_id').val('');//글쓴이 입력필드를 초기화
				   $('#mem_id').focus();//글쓴이 입력필드로 포커스 이동
				   return false;//이벤트 종료
			   }
			   //메서드 체이닝 형식
			   if($.trim($('#mem_pwd').val()).length == 0){
				   alert('비밀번호를 입력하세요!');
				   $('#mem_pwd').val('').focus(); //메서드체이닝
				   return false;
			   }
			   
			   if($.trim($('#mem_name').val()).length == 0){
				   alert('회원이름을 입력하세요!');
				   $('#mem_name').val('').focus();
				   return false;
			   }
			   if($.trim($('#mem_phone').val()).length == 0){
				   alert('전화번호를 입력하세요!');
				   $('#mem_phone').val('').focus();
				   return false;
			   }
			   // length 안 쓴 다른 형식
			   if($.trim($('#mem_email').val()) == ""){
				   alert('이메일 주소를 입력하세요!');
				   $('#mem_email').val('').focus();
				   return false;
			   }
			   
			   
			   
			 }
		</script>
	</head>
	<body>
		<h3>회원가입 폼 유효성 검증 연습</h3>
		<form method="post" action="join_ok.jsp" onsubmit="return join_check();">
			<table border="1">
				<tr>
					<th>회원아이디</th>
					<td><input type="text" name="mem_id" id="mem_id" size="14"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="mem_pwd" id="mem_pwd" size="14"></td>
				</tr>
				<tr>
					<th>회원 이름</th>
					<td><input type="text" name="mem_name" id="mem_name" size="14"></td>
				</tr>
				<tr>
					<th>폰 번호</th>
					<td><input type="text" name="mem_phone" id="mem_phone" size="20"></td>
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text" name="mem_email" id="mem_email" size="24"></td>
				</tr>
				<tr>
					<th colspan="2"><%--2개의 열 합침 --%>
						<input type="submit" value="회원가입">
						<input type="reset" value="가입취소" onclick="$('#mem_id').focus()">
						<!-- 가입 취소시 포커스 이동  -->
					</th>
				</tr>
			</table>
		</form>
	</body>
</html>