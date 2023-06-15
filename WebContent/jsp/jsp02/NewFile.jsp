<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$("#btn").click(function () {
			$("#test").html("<b style='color:red'>방명록 글제목을 입력해주세요</b>"); 
		});
	});

</script>
</head>
<body>
<p id="test">hi</p> <button id="btn" style="width: 30px; height: 20px;"></button>

</body>
</html>