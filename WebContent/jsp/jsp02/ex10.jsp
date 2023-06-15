<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		<script src="../js/jquery.js"></script>
		
		<script type="text/javascript">
			function gestCheck() {
				$gname =$.trim($('$gname').val());  // trim() 함수는 양족 공백을 제거, 글쓴이를 저장
				if($gname.length == 0 ){
					window.alert("글쓴이를 입력하세요");
					$('#gname').val('');//글쓴이 입력값 초기화
					$('#gname').focus('');//글쓴이 입력필드로 포커스 이동
					return false;//이벤트 종료
					
				}
				//위 코드 간략히
				$gTitle= $.trim($('#gTitle').val());
				if($gTitle == ''){
					//alert("글제목을 입력하세요");
					$("#test").html("<b style='color:red'>방명록 글제목을 입력해주세요</b>"); 
					$(".gname").html("<b style='color:red;'>" + "방명록 글제목을 입력해주세요</b>"); 
					$('$gTitle').val('').focus();
					return false;
				}
				//위코드 더 간략히
				if($.trim($('#gCont').val()).length ==0){
					alert("방명록 글내용을 입력하세요");
					$('gCont').val('').focus();
					return false;
				}
				
				
			}
			
			
		</script>
	</head>
	<body>
		<h2>방명록 입력 폼 유효성 검증 연습(Validate)</h2>
		<!-- 문제 : 입력 폼 3개 생성, 유효성 검증 메시지를 띄우기 
		                       글제목을 입력하세요! 라는 alert 부분 주석처리,
		          jQuery 함수로 글제목 입력 필드 밑에 
		                      빨간색 으로 '방명록 글제목을 입력해주세요' 띄우기-->
		                      
		<form method="post" action="guest_ok.jsp" onsubmit="return gestCheck();">
			글쓴이<input type="text" id="gname" name="gname" size="14"><br>
			글제목<input type="text" id="gTitle" name="gTitle"><br>
			<span id="test" class="gTitle"></span>
			<br><br>
			방명록<textarea rows="10" cols="36" id="gCont" name="gCont"></textarea><br>
			<input type="submit" value="저장" >
			<input type="reset" value="취소">
		</form>
	
	</body>
</html>