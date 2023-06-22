<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int gno = Integer.parseInt(request.getParameter("no"));


%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 삭제</title>
<script type="text/javascript">
	function del_check()() {
		if($.trim($('#del_pwd').val()) == ""){
			alert("비번을 입력하세요");
			$('#del_pwd').val('').focus();
			return false;
			
		}
	}

</script>
</head>
<body>
<form method="post" action="guest_del_ok.jsp?no=<%=gno%>" onsubmit="return del_check();">
<%--action 속성값이 *jsp?no=번호가  get 나머지는 post로 전달 --%>
	<table border="1">
		<tr>
			<th colspan="2">방명록 삭제</th>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="del_pwd" id="del_pwd" size="14"></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="삭제">
				<input type="reset" value="취소"
				 onclick="location='guest_cont.jsp?no=<%=gno %>';">
			
			
			</th>
		</tr>
		
	
	
	</table>



</form>

</body>
</html>