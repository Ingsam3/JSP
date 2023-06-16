<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function write_check(){
		if(window.document.f.title.value.length == 0){
			//f(폼객체).title(글제목 입력박스).value(값).length
			window.alert("글제목을 입력하세요"); //window.은 생략가능
			f.title.focus();
			return false;
		}
		if(f.content.value == ""){
			alert("글내용 입력하세요");
			f.content.focus();
			return false;
			
		}
	}	
</script>
</head>
<body>
	<h2>게시판 유효성 검증 처리</h2>
	<form name="f" action="board_ok.jsp" onsubmit="return write_check();" method="post">
		글제목 : <input type="text" name="title" size="30"><br><br>
		글내용 : <textarea name="content" rows="10" cols="36" ></textarea><br><br>
		<input type="submit" value="입력">
		<input type="reset" value="취소" onclick="f.title.focus();">
	
	
	</form>
</body>
</html>