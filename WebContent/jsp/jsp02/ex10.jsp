<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
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
</html> --%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script type="text/javascript">

 function guest_check(){//function 키워드로 guest_book()함수 정의
   $gName =  $.trim($('#gName').val());//trim()함수는 양쪽공백을 제거, 글쓴이를 저장
   if($gName.length == 0){
	   window.alert('글쓴이를 입력하세요!');//window.은 생략가능함.
	   $('#gName').val('');//글쓴이 입력필드를 초기화
	   $('#gName').focus();//글쓴이 입력필드로 포커스 이동
	   return false;//이벤트 종료
   }
   
   $gTitle = $.trim($('#gTitle').val());
   if($gTitle == ''){
	   //alert('글제목을 입력하세요!');
  	   $('.gTitle').html("<strong style='color:red;font-size:10px;'>"+
  	   "방명록 글제목을 입력해 주세요!</strong>");
	   $('#gTitle').val('').focus();
	   return false;
   }
   
   if($.trim($('#gCont').val()).length == 0){
	   alert('방명록 글내용을 입력하세요!');
	   $('#gCont').val('').focus();
	   return false;
   }
 }
</script>
</head>
<body>
 <h2>방명록 입력폼 유효성 검증 연습(Validate)</h2>
 <%--
  문제)table표테이블 사용하지 말고 입력폼 3개를 만들어서 유효성 검증메시지를 띄우게 해보자. 글제목을 입력하세요!라는 유효성
  검증 메시지가 경고창으로 띄워지고 있는대 이 부분을 주석처리 하시고 적절한 jQuery함수를 사용해서 글제목 입력필드 밑에 빨간색
  문자로 다음과 같은 유효성 검증 메시지를 띄워보게 만든다. '방명록 글제목을 입력해 주세요!'
 --%>
 <form method="post" action="guest_ok.jsp" onsubmit="return guest_check();">
 글쓴이:<input type="text" name="gName" id="gName" size="14" > <br><br>
 글제목:<input type="text" name="gTitle" id="gTitle" size="32" ><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <span class="gTitle"></span><%--여기에 유효성검증 메시지가 출력된다. --%>
 <br><br>
 글내용:<textarea name="gCont" id="gCont" rows="10" cols="36"></textarea><br><br>
 <input type="submit" value="저장" >
 <input type="reset" value="취소" >
 </form>
</body>
</html>



