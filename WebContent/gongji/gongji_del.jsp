<%@ page contentType="text/html; charset=UTF-8" %>
<%
   int g_no=Integer.parseInt(request.getParameter("gongjino"));//get으로 전달된 번호값을 정수 숫자로 변경해서
   //저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 삭제</title>
<script src="../js/jquery.js"></script>
<script>
  function del_check(){
	  if($.trim($('#del_pwd').val()) == ""){
		  alert('비번을 입력하세요!');
		  $('#del_pwd').val('').focus();
		  return false;
	  }
  }
</script>
</head>
<body>
<form method="post" action="gongji_del_ok.jsp" onsubmit="return del_check();">
<input type="hidden" name="g_no" value="<%=g_no%>" >
  <table border="1">
   <tr>
    <th colspan="2">관리자 공지 삭제</th>
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="del_pwd" id="del_pwd" size="14" ></td>
   </tr>
   <tr>
    <th colspan="2">
     <input type="submit" value="삭제" >
     <input type="reset" value="취소" onclick="location='gongji_cont.jsp?no=<%=g_no%>';" >
    </th>
   </tr>
  </table>
</form>
</body>
</html>